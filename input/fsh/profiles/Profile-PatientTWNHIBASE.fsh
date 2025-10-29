Profile:        PatientTWNHIBASE
Parent:         TWCorePatient
Id:             Patient-twnhibase
Title:          "病人資訊-Patient TWNHIBASE"
Description:    "此病人資訊-Patient TWNHIBASE Profile說明本IG如何進一步定義臺灣核心-病人(TW Core Patient) Profile以呈現健保署基礎之病人基本資料"

* identifier 1..2 MS
* identifier[idCardNumber] 1..1
/* identifier[residentNumber] 0..0
* identifier[passportNumber] 0..0 */

* name obeys pat-name
* name 1..1 MS
* name[official] 0..0
* name[temp] 0..0
* name[anonymous] 0..0
* name[usual] 1..1 MS
* name[usual].text 1..1 MS

* identifier[idCardNumber] ^short = "身分證號，被保險人國民身分證統一編號。"
* identifier[medicalRecord] ^short = "病歷號 (參與醫院必須註冊命名系統)，由醫院自行填寫。"

* birthDate ^short = "出生日期，YYYY-MM-DD，西元年月日。"
* gender ^short = "male:男性 ｜ female:女性 ｜ other:其他 ｜ unknown:未知"
* . obeys patient-gender-match


Invariant:   pat-name
Description: "病人姓名有誤，超過40字"
Expression:  "text.length() <= 40"
Severity:    #error

Invariant: patient-gender-match
Description: "gender依據identifier:idCardNumber第二位字符檢核男性與女性代碼 (1=male, 2=female)"
Expression: "(identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '1' implies gender = 'male') and (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '2' implies gender = 'female')"
Severity: #error
