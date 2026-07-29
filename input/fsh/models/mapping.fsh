Mapping: TWNHIBASEClaim
Id: TWNHIBASEClaim
Title: "Mapping to TWNHIBASE Claim"
Source: BaseModel
Target: "https://nhicore.nhi.gov.tw/base/StructureDefinition/Claim-twnhibase"
* hosp.hospId -> "Claim.provider.reference" "醫事機構代碼"
* hosp.applType -> "Claim.subType.coding.code" "申報類別"
* hosp.applDate -> "Claim.created" "申請日期"

//* patient -> "(病人資訊)"
* patient.idCard -> "Claim.patient.reference" "身分證號"

//* diagnosis -> "(疾病資訊)"
* diagnosis.icd10cmCode -> "Claim.diagnosis.diagnosisCodeableConcept.coding.code" "國際疾病分類代碼"
* diagnosis.diagDate -> "Claim.diagnosis.extension[recordedDate].valueDate" "診斷日期"
//* diagnosis.diagDate -> "Claim.diagnosis.extension.where(url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate').valueDate" "診斷日期"
* diagnosis.diagCurrentStatus -> "Claim.diagnosis.type.text" "簡要病摘"

//* gene -> "(基因資訊)"
* gene.genTestCode -> "Claim.supportingInfo.where(category.coding.code = 'geneInfo').valueReference.reference" "基因檢測代碼"

Mapping: TWNHIBASEPatient
Id: TWNHIBASEPatient
Title: "Mapping to TWNHIBASE Patient"
Source: BaseModel
Target: "https://nhicore.nhi.gov.tw/base/StructureDefinition/Patient-twnhibase"
* patient -> "Patient" "(病人資訊)"
* patient.patId -> "Patient.identifier.where(type.coding.code = 'MR').value" "病歷號"
* patient.name -> "Patient.name.text" "姓名"
* patient.idCard -> "Patient.identifier.where(type.coding.code = 'NNxxx').value" "身分證號"
* patient.birthday -> "Patient.birthDate" "出生日期"
* patient.gender -> "Patient.gender" "病人性別"

Mapping: TWNHIBASEOrganization
Id: TWNHIBASEOrganization
Title: "Mapping to TWNHIBASE Organization"
Source: BaseModel
Target: "https://nhicore.nhi.gov.tw/base/StructureDefinition/Organization-twnhibase"
* hosp -> "Organization" "院所資訊"
* hosp.hospId -> "Organization.identifier.value" "醫事機構代碼"
* gene -> "Organization" "基因資訊"
* gene.genOrg -> "Organization.identifier.value" "基因檢測機構"

Mapping: TWNHIBASEObservationDiagnostic
Id: TWNHIBASEObservationDiagnostic
Title: "Mapping to TWNHIBASE ObservationDiagnostic"
Source: BaseModel
Target: "https://nhicore.nhi.gov.tw/base/StructureDefinition/Observation-diagnostic-twnhibase"
* gene -> "ObservationDiagnostic" "基因資訊"
* gene.genTestCode -> "ObservationDiagnostic.component.code.coding.code" "基因檢測代碼"
* gene.mutationType -> "ObservationDiagnostic.component.where(code.coding.code = '48019-4').valueCodeableConcept.coding.code" "基因突變類型"
* gene.specimenType -> "ObservationDiagnostic.specimen.reference" "基因檢測檢體類型"
* gene.genMethod -> "ObservationDiagnostic.method.coding.code" "基因檢測方法"
* gene.genDate -> "ObservationDiagnostic.effectiveDateTime" "基因檢測日期"
* gene.genOrg -> "ObservationDiagnostic.performer.reference" "基因檢測機構"
* gene.genResult -> "ObservationDiagnostic.valueCodeableConcept.coding.code" "基因檢測分析結果"
* gene.genInterpretation -> "ObservationDiagnostic.interpretation.coding.code" "基因臨床判讀結果"
* gene.genPdf -> "ObservationDiagnostic.derivedFrom.reference" "基因報告（請填寫完整檔案路徑）"

//* gene.genTestValue -> "component.value[x] (基因檢測實際結果)"

Mapping: TWNHIBASEDocumentReference
Id: TWNHIBASEDocumentReference
Title: "Mapping to TWNHIBASE DocumentReference"
Source: BaseModel
Target: "https://nhicore.nhi.gov.tw/base/StructureDefinition/DocumentReference-twnhibase"
* gene -> "DocumentReference" "基因資訊"
* gene.genPdf -> "DocumentReference.content.attachment.url" "基因報告（請填寫完整檔案路徑）"
* gene.genPdfTitle -> "DocumentReference.content.attachment.title" "基因報告名稱"


