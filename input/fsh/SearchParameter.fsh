//-------------------------Claim-------------------------
Instance: Claim-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://nhicore.nhi.gov.tw/base/SearchParameter/Claim-patient"
* name = "ClaimID"
* status = #active
* version = "0.0.1"
* date = "2025-10-29"
* publisher = "HL7 International"
* description = "事前審查(Claim)的病人資訊(patient)"
* code = #patient
* base = #Claim
* expression = "Claim.id"
* type = #reference
* chain[0] = "name"
* chain[1] = "identifier"

//-------------------Patient-------------------
//--------------------姓名-------------------
Instance: Patient-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://nhicore.nhi.gov.tw/base/SearchParameter/Patient-name"
* name = "PatientName"
* status = #active
* version = "0.0.1"
* date = "2025-10-29"
* publisher = "HL7 International"
* description = "病人的姓名(name)，該查詢可能與 HumanName 中的任何字串匹配，包括完整的中文姓名(text)、英文姓(family)、英文名(given)、姓名前面的頭銜(prefix)、姓名後面的稱謂(suffix)。"
* code = #name
* base = #Patient
* expression = "Patient.name"
* type = #string
//------------------身分證號-----------------
Instance: Patient-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://nhicore.nhi.gov.tw/base/SearchParameter/Patient-identifier"
* name = "PatientIdentifier"
* status = #active
* version = "0.0.1"
* date = "2025-10-29"
* publisher = "HL7 International"
* description = "病人的身分證號(identifier)"
* code = #identifier
* base = #Patient
* expression = "Patient.identifier"
* type = #token