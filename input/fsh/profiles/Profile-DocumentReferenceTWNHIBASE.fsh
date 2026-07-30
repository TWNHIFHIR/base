Profile:        DocumentReferenceTWNHIBASE
Parent:         TWCoreDocumentReference
Id:             DocumentReference-twnhibase
Title:          "文件參照-DocumentReference TWNHIBASE"
Description:    "此文件參照-DocumentReference TWNHIBASE Profile說明本IG如何進一步定義臺灣核心-文件參照(TW Core DocumentReference) Profile以呈現健保署基礎之治療計畫文件及基因報告"

* category 1..1
* category.coding 1..1
* category.coding.code 1..1
* category from NHIPDFType
* content.attachment MS 
* content.attachment.url 1..1 MS
* content.attachment obeys UploadContent
* content.attachment.title 0..1 MS 
* content.attachment.contentType 1..1 MS 
* content.attachment.contentType ^short = "報告結果-MIMEType"
* content.attachment.url ^short = "基因報告。（請填寫完整檔案路徑）"
* content.attachment.url ^example.valueUrl = "file://PathologyReport01.pdf"
* content.attachment.title ^short = "基因報告名稱。"
* subject only Reference(PatientTWNHIBASE) 

Invariant:   UploadContent
Description: "填寫格式：file://檔名.副檔名，例如：file://US01.jpg、file://PathologyReport01.pdf、file://GenReport01.pdf、file://王大明病歷.pdf"
Expression:  "url.matches('^file://[a-zA-Z0-9_\u4e00-\u9fa5()（）\uFF0D]+.[a-zA-Z]{2,5}$')"
Severity:    #error