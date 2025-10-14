/*
Mapping: TWNGSBundle
Id: TWNGSBundle
Title: "Mapping to TWNGS Bundle"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Bundle-twngs"
* diagnosis -> "(疾病資訊)"
* diagnosis.icd10cmCode -> "entry:Condition.code（國際疾病分類代碼）"
* gene -> "(基因資訊)"
* gene.genTestCode -> "entry:DiagnosticReport.code（基因檢測代碼）"
* hosp -> "(院所資訊)"
* hosp.srialNum -> "identifier（流水號）"
* hosp.hospId -> "entry:Organization.identifier（醫事機構代碼）"
* hosp.applType -> "entry:Composition.type（申報類別）"
* apply -> "(申請資訊)"
* apply.mdicOrdr -> "entry:ServiceRequest.code.coding（醫令代碼）"
* patient -> "(病人資訊)"
* patient.idCard -> "entry:patient.identifier（身分證字號）"

Mapping: TWNGSComposition
Id: TWNGSComposition
Title: "Mapping to TWNGS Composition"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Composition-twngs"
* hosp -> "(院所資訊)"
* hosp.applType -> "type（申報類別）"
* hosp.decDate -> "date（申報日期）"
* hosp.casCatgory -> "category（案件分類）"


Mapping: TWNGSCondition
Id: TWNGSCondition
Title: "Mapping to TWNGS Condition"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Condition-twngs"
* diagnosis -> "(疾病資訊)"
* diagnosis.icd10cmCode -> "code.coding（國際疾病分類代碼）"
* diagnosis.diagDate -> "recordedDate（診斷日期）"
* diagnosis.diagCurrentStatus -> "note（簡要病摘）"


Mapping: TWNGSDiagnosticReport
Id: TWNGSDiagnosticReport
Title: "Mapping to TWNGS DiagnosticReport"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/DiagnosticReport-twngs"
* diagnosis -> "(疾病資訊)"
* diagnosis.icd10cmCode -> "supporting-info.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo').valueReference.reference(Condition) (國際疾病分類代碼)"
* gene -> "(基因資訊)"
* gene.genTestCode -> "result.reference(Observation) (基因檢測代碼)"
* apply -> "(申請項目)"
* apply.mdicOrdr -> "basedOn.reference(ServiceRequest)（醫令代碼）"
* apply.ngsTesNum  -> "result.reference(Observation) (NGS檢測編號）"
* patient -> "(病人資訊)"
* patient.idCard -> "patient.reference(PatientTWNGS) (身分證字號)"

Mapping: TWNGSObservation
Id: TWNGSObservation
Title: "Mapping to TWNGS Observation"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Observation-twngs"
* gene -> "(基因資訊)"
* gene.genTestCode -> "component：gene-test-code (基因檢測代碼)"
* gene.specimePathNo -> "specimen.reference(SpecimenTWNGS)(檢體病理編號)"
* gene.genOrg -> "performer.reference(OrganizationTWNGS) (基因檢測機構)"
* gene.mutationType -> "component.where(code.coding.code = '81247-9').interpretation (基因突變類型)"
* gene.genResult -> "valueCodeableConcept.coding.code (基因檢測分析結果)"
* gene.genInterpretation -> "interpretation.coding.code (基因臨床判讀結果)"
* gene.genPdf -> "derivedFrom.reference(DocumentReferenceTWPAS) (基因報告（檔案路徑）)"
* gene.genPdfTitle -> "content.attachment.title (基因報告名稱)"
* gene.genTesList -> "component：gen-list(檢測基因列表)"
* gene.seqNam -> "specimen.reference(DeviceTWNGS) (定序儀名稱)"
* apply -> "(申請項目)"
* apply.ngsTesNum -> "identifier.value (NGS檢測編號(VPN取號))"

Mapping: TWNGSSpecimen
Id: TWNGSSpecimen
Title: "Mapping to TWNGS Specimen"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Specimen-twngs"
* gene -> "(基因資訊)"
* gene.specimePathNo -> "identifier.value (檢體病理編號)"
* gene.specimenType -> "type.coding (基因檢測檢體類型)"

Mapping: TWNGSOrganization
Id: TWNGSOrganization
Title: "Mapping to TWNGS Organization"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Organization-twngs"
* hosp -> "(院所資訊)"
* hosp.hospId -> "identifier.value (醫事機構代碼)"
* gene -> "(基因資訊)"
* gene.genOrg -> "identifier.value (基因檢測機構)"


Mapping: TWNGSDocumentReference
Id: TWNGSDocumentReference
Title: "Mapping to TWNGS DocumentReference"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/DocumentReference-twngs"
* gene -> "(基因資訊)"
* gene.reportResultString -> "content.attachment.contentType（報告結果）" 
* gene.genPdf -> "content.attachment.url（檔案路徑）"
* gene.genPdfTitle -> "content.attachment.title (基因報告名稱)"

Mapping: TWNGSDevice
Id: TWNGSDevice
Title: "Mapping to TWNGS Device"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Device-twngs"
* gene -> "(基因資訊)"
* gene.seqNam -> "deviceName (定序儀名稱)"
* gene.seqModel -> "modelNumber (定序儀型號)"



Mapping: TWNGSPatient
Id: TWNGSPatient
Title: "Mapping to TWNGS Patient"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/Patient-twngs"
* patient -> "(病人資訊)"
* patient.patId -> "identifier.where(type.coding.code = 'MR').value (病歷號)"
* patient.name -> "name.text (姓名)"
* patient.idCard -> "identifier.where(type.coding.code = 'NNxxx').value (身分證字號)"
* patient.gender -> "gender (病人性別)"
* patient.birthday -> "birthDate (出生日期)"


Mapping: TWNGSServiceRequest
Id: TWNGSServiceRequest
Title: "Mapping to TWNGS ServiceRequest"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ngs/StructureDefinition/ServiceRequest-twngs"
* apply -> "(申請項目)"
* apply.mdicOrdr -> "code.coding (基因定序檢測申請品項之醫令代碼)"

*/
