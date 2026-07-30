Profile:        ClaimTWNHIBASE
Parent:         Claim
Id:             Claim-twnhibase
Title:          "事前審查-Claim TWNHIBASE"
Description:    "此事前審查-Claim TWNHIBASE Profile說明本IG如何進一步定義FHIR的Claim Resource以呈現健保署基礎事前審查之內容"

* provider and subType and created and patient MS
* provider 1..1
* provider only Reference(OrganizationTWNHIBASE)
* subType 1..1
* subType from NHIApplyType
* subType.coding 1..1
* subType.coding.system 1..1
* subType.coding.system = "https://nhicore.nhi.gov.tw/base/CodeSystem/nhi-apply-type"
* subType.coding.code 1..1
* subType.coding.code ^short = "申報類別，1:送核 | 2:送核補件 | 3:申復 | 4:爭議審議 | 5:申復補件 。"
* priority from NHITMHBType
* patient only Reference(PatientTWNHIBASE)
* diagnosis 1.. MS
* diagnosis.diagnosis[x] MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosisCodeableConcept from TW2023ICD10CM (preferred)
* diagnosis.diagnosisCodeableConcept.coding ^slicing.discriminator[0].type = #value
* diagnosis.diagnosisCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* diagnosis.diagnosisCodeableConcept.coding ^slicing.rules = #closed
* diagnosis.diagnosisCodeableConcept.coding contains
    icd10-cm-2023 0..1 MS and
    icd10-cm-2014 0..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023] from TW2023ICD10CM (extensible)
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw"
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023].system 1..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2023].code 1..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014] from TW2014ICD10CM (extensible)
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2014-tw"
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014].system 1..1 MS
* diagnosis.diagnosisCodeableConcept.coding[icd10-cm-2014].code 1..1 MS
* diagnosis.extension contains 
    http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate named recordedDate 0..* MS
* diagnosis.type 0..1
* diagnosis.type.text 1..1 MS
//* diagnosis.type.text obeys pas-2
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo.category from NHIPASSupportingInfoType
* supportingInfo contains
    geneInfo 0..*
* supportingInfo[geneInfo] ^short = "基因資訊"
* supportingInfo[geneInfo].category = NHIPASSupportingInfoTypeCodes#geneInfo
* supportingInfo[geneInfo].timing[x] ..0
* supportingInfo[geneInfo].value[x] 1.. MS
* supportingInfo[geneInfo].value[x] only Reference(ObservationDiagnosticTWNHIBASE)
* provider ^short = "醫事機構代碼，必須存在於醫事機構基本資料檔內。"
* subType ^short = "申報類別，1:送核 | 2:送核補件 | 3:申復 | 4:爭議審議 | 5:申復補件 。" 
* created ^short = "申請日期，YYYY-MM-DD，機構自填。"
* priority ^short = "申請案件類別，1:一般事前審查申請 | 3:自主審查 | 4:緊急報備；專審系統識別用，對應PXXT_CODE(TMHB,001)。"
* patient ^short = "病人資訊"
* diagnosis.diagnosisCodeableConcept ^short = "國際疾病分類代碼(含共病)，當前疾病狀態。ICD-10-CM。"
* diagnosis.extension[recordedDate] ^short = "診斷日期，YYYY-MM-DD，西元年月日。【此為參考Da Vinci PAS IG的extension設計】"
* diagnosis.type.text ^short = "簡要病摘(申請理由)。連結院內HIS系統之簡要病摘，或填寫原事前審查之申請理由。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* diagnosis ^short = "sequence=1時為主要疾病；sequence>=2代表共病。"
* diagnosis.sequence ^short = "sequence=1時為主要疾病；sequence>=2代表共病。"
