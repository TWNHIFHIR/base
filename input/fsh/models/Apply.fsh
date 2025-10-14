/*Logical: ApplyModel
Id: ApplyModel
Title: "申請(Apply)次世代基因定序檢測之資料模型"
Description: """
申請(Apply)次世代基因定序檢測之資料模型，此邏輯模型為定義次世代基因定序檢測情境下使用的所有資料欄位。
為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」
瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。亦可配合
[視覺化邏輯模型圖]進行欄位對應。
"""
* ^version = "1.0.1"

// 疾病資訊
* diagnosis 1..1 BackboneElement "疾病資訊" "疾病資訊"
* diagnosis.diagDate 1..1 date "診斷日期" "YYYYMMDD，西元年月日，民國前為負數"
* diagnosis.icd10cmCode 1..1 code "國際疾病分類代碼 (sequence=1)，共病症 (sequence>=2)" "國際疾病分類代碼 (sequence=1)，共病症 (sequence>=2)"
* diagnosis.diagCurrentStatus 1..1 code "簡要病摘。連結院內HIS系統之簡要病摘，或填寫原基因定序檢測之申請理由。" "簡要病摘。連結院內HIS系統之簡要病摘，或填寫原基因定序檢測之申請理由。"

//基因資訊
* gene 1..1 BackboneElement "基因資訊" "基因資訊"
* gene.genTestCode 1..* CodeableConcept "基因檢測代碼" "基因檢測代碼"
* gene.specimePathNo 1..1 Identifier "檢體病理編號" "檢體病理編號"
* gene.specimenType 1..1 CodeableConcept "基因檢測檢體類型" "基因檢測檢體類型"
* gene.genOrg 1..1 string "基因檢測機構" "基因檢測機構"
* gene.mutationType 1..1 CodeableConcept "基因突變類型" "基因突變類型"
* gene.genResult 1..1 CodeableConcept "基因檢測分析結果" "基因檢測分析結果"
* gene.genInterpretation 1..* CodeableConcept "基因臨床判讀結果" "基因臨床判讀結果，醫師判讀結果"
* gene.reportResultString 1..1 string "報告結果 - MIMEType" "檢查報告結果-文數字與base64Binary應擇一填寫"
* gene.genPdf 1..1 base64Binary "基因報告（檔案路徑）" "基因報告（請填寫完整檔案路徑）"
* gene.genPdfTitle 1..1 string "基因報告名稱" "基因報告名稱"
* gene.genTesList 1..* BackboneElement "檢測基因列表" "檢測基因列表"
* gene.seqNam 1..1 BackboneElement "定序儀名稱" "定序儀名稱"
* gene.seqModel 1..1 string "定序儀型號" "定序儀型號"

// 院所資訊
* hosp 1..1 BackboneElement "院所資訊" "院所資訊"
* hosp.hospId 1..1 string "醫事機構代碼" "醫事機構代碼，必須存在於醫事機構基本資料檔內"
* hosp.expDate 1..1 dateTime "費用年月" "費用年月"
* hosp.applType 1..1 CodeableConcept "申報類別" "申報類別"
* hosp.decDate 1..1 dateTime "申報日期" "申報日期"
* hosp.casCatgory 1..1 CodeableConcept "案件分類" "案件分類"
* hosp.srialNum 1..1 Identifier "流水號" "流水號"


// 申請資訊
* apply 1..1 BackboneElement "申請項目" "申請項目"
* apply.mdicOrdr 1..1 CodeableConcept "醫令代碼" "醫令代碼"
* apply.ngsTesNum 1..1 Identifier "NGS檢測編號(VPN取號)" "NGS檢測編號(VPN取號)"
* apply.genMethod 1..1 CodeableConcept "基因檢測方法" "基因檢測方法"
* apply.genDate 1..1 dateTime "基因檢測日期" "基因檢測日期"

// 病人資訊
* patient 1..1 BackboneElement "病人資訊" "病人資訊"
* patient.patId 0..1 string "病歷號" "病歷號 (參與醫院必須註冊命名系統)"
* patient.idCard 1..1 string "身分證字號" "身分證字號"
* patient.name 1..1 HumanName "姓名" "姓名"
* patient.gender 1..1 code "病人性別" "病人性別"
* patient.birthday 1..1 date "出生日期" "出生日期"


*/