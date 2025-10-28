Profile:        CoverageTWNHIBASE
Parent:         Coverage
Id:             Coverage-twnhibase
Title:          "健保事前審查計畫-Coverage TWNHIBASE"
Description:    "此健保事前審查計畫-Coverage TWNHIBASE Profile說明本IG如何進一步定義FHIR的Coverage Resource以呈現健保署基礎癌藥事前審查之健保事前審查計畫"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Coverage-twnhibase"
* status = http://hl7.org/fhir/fm-status#active
* beneficiary only Reference(PatientTWNHIBASE) 
* payor only Reference(TWCoreOrganizationGovt)