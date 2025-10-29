Profile:        OrganizationTWNHIBASE
Parent:         TWCoreOrganization
Id:             Organization-twnhibase
Title:          "醫事機構-Organization TWNHIBASE"
Description:    "此醫事機構-Organization TWNHIBASE Profile說明本IG如何進一步定義臺灣核心-機構(TW Core Organization) Profile以呈現健保署基礎之醫事機構基本資料"
* identifier 1..1
* identifier.value 1..1
* identifier ^short = "醫事機構代碼"
* identifier.value from NHIOrganization
* identifier.system = "https://nhicore.nhi.gov.tw/base/CodeSystem/organization-identifier-tw"
* identifier.system 1..1
* identifier.system ^example[0].valueUri = "https://nhicore.nhi.gov.tw/base/CodeSystem/organization-identifier-tw"
* identifier.value ^example[0].valueString = "0101090517"

Profile:        OrganizationGeneTWNHIBASE
Parent:         TWCoreOrganization
Id:             Organization-gene-twnhibase
Title:          "基因檢測機構-Organization Gene TWNHIBASE"
Description:    "此基因檢測機構-Organization Gene TWNHIBASE Profile說明本IG如何進一步定義臺灣核心-機構(TW Core Organization) Profile以呈現健保署基礎之基因檢測機構基本資料"
* identifier 1..1
* identifier.value 1..1
* identifier ^short = "基因檢測機構，衛福部公告名冊或LDTs核定函上之「案件編號」。"
* identifier.system = "https://dep.mohw.gov.tw"

* identifier.system ^example[0].valueUri = "https://dep.mohw.gov.tw"
* identifier.value ^example[0].valueString = "2023LDTB0002"