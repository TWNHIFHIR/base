Profile:        DocumentReferenceTWNHIBASE
Parent:         TWCoreDocumentReference
Id:             DocumentReference-twnhibase
Title:          "文件參照-DocumentReference TWNHIBASE"
Description:    "此文件參照-DocumentReference TWNHIBASE Profile說明本IG如何進一步定義臺灣核心-文件參照(TW Core DocumentReference) Profile以呈現健保署基礎之治療計畫文件及基因報告"
* meta 1..1
* meta.profile 1..1
* meta.profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/DocumentReference-twnhibase"
* status = http://hl7.org/fhir/document-reference-status#current
* category 1..1
* category.coding 1..1
* category.coding.code 1..1
* category from NHIPDFType
* content.attachment MS 
//* content.attachment.data 0..1
* content.attachment.url 1..1 MS
* content.attachment obeys UploadContent
* content.attachment.title 0..1 MS 
* content.attachment.contentType 1..1 MS 
* content.attachment.contentType = urn:ietf:bcp:13#application/pdf
* content.attachment.contentType ^short = "報告結果-MIMEType"
//* content.attachment.data ^short = "基因報告／治療計畫文件／檢驗(查)附件／病歷資料（以上文件以base64Binary儲存）。上傳至健保署時不得填入，若醫院不小心上傳，需要先擋掉。"
* content.attachment.url ^short = "基因報告／治療計畫文件／檢驗(查)附件／病歷資料。（請填寫完整檔案路徑）"
* content.attachment.url ^example.valueUrl = "file://PathologyReport01.pdf"
* content.attachment.title ^short = "基因報告名稱／治療計畫文件名稱／檢驗(查)附件名稱／病歷資料名稱。若category為「治療計畫文件(#careplan)」，請擇一填寫：「免疫檢查點抑制劑治療計畫／CAR-T多團隊會議紀錄／造血幹細胞移植計畫書」。"
* subject only Reference(PatientTWNHIBASE) 
//* . obeys report-title

/*Invariant:   report-title
Description: "若category為「治療計畫文件(#careplan)」，請擇一填寫：「免疫檢查點抑制劑治療計畫／CAR-T多團隊會議紀錄／造血幹細胞移植計畫書」"
Expression:  "((category.coding.exists(code='careplan')) implies (content.attachment.title = '免疫檢查點抑制劑治療計畫' or content.attachment.title = 'CAR-T多團隊會議紀錄' or content.attachment.title = '造血幹細胞移植計畫書'))"
Severity:    #error */

Invariant:   UploadContent
Description: "填寫格式：file://檔名.副檔名，例如：file://US01.jpg、file://PathologyReport01.pdf、file://GenReport01.pdf、file://王大明病歷.pdf"
Expression:  "url.matches('^file://[a-zA-Z0-9_\u4e00-\u9fa5()（）\uFF0D]+.[a-zA-Z]{2,5}$')"
Severity:    #error