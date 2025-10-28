Profile:        SpecimenTWNHIBASE
Parent:         TWCoreSpecimen
Id:             Specimen-twnhibase
Title:          "基因檢測檢體-Specimen TWNHIBASE"
Description:    "此基因檢測檢體-Specimen TWNHIBASE Profile說明本IG如何進一步定義臺灣核心-檢體(TW Core Specimen) Profile以呈現健保署基礎基因資訊之檢測檢體相關內容"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Specimen-twnhibase"
* subject only Reference(PatientTWNHIBASE)
* receivedTime and type MS
* type 1..1
* receivedTime 1..1
* type from SpecimenType
* receivedTime ^short = "基因檢測日期"
* type ^short = "基因檢測檢體類型"