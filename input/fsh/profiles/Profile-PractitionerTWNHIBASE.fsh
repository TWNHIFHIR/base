Profile:        PractitionerTWNHIBASE
Parent:         https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Id:             Practitioner-twpas
Title:          "醫事人員-Practitioner TWNHIBASE"

* identifier 1..2
* identifier ^slicing.rules = #closed
* identifier[idCardNumber] ^short  = "醫師身分證號"
* identifier[medicalLicenseNumber] ^short  = "醫師證號"
* identifier[residentNumber] ^short  = "醫師居留證號碼"
* identifier[passportNumber] 0..0
* identifier[idCardNumber] 0..1

* identifier[medicalLicenseNumber].system = "https://dep.mohw.gov.tw/DOMA"
* identifier[idCardNumber].system ^short  = "身分證號的命名空間（namespace），請固定填「http://www.moi.gov.tw」。"
* identifier[medicalLicenseNumber].system ^short  = "醫師證號的命名空間（namespace），請固定填「https://dep.mohw.gov.tw/DOMA」。"
* identifier[residentNumber].system = "http://www.immigration.gov.tw"
* identifier[residentNumber].system ^short  = "居留證號碼的命名空間（namespace），請固定填「http://www.immigration.gov.tw」。"