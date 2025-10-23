Logical: BaseModel
Id: BaseModel
Title: "臺灣健保署基礎(Base)資料模型"
Description: """
臺灣健保署基礎(Base)資料模型，此邏輯模型為定義臺灣健保署基礎情境下使用的所有資料欄位。
為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」
瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。亦可配合
[視覺化邏輯模型圖]進行欄位對應。
"""
//* ^version = "0.0.1"

// 院所資訊
* hosp 1..1 BackboneElement "院所資訊" "院所資訊"
* hosp.hospId 1..1 string "醫事機構代碼" "醫事機構代碼，必須存在於醫事機構基本資料檔內"
* hosp.applType 1..1 CodeableConcept "申報類別" "申報類別"
* hosp.applDate 1..1 dateTime "申請日期" "申請日期"

// 病人資訊
* patient 1..1 BackboneElement "病人資訊" "病人資訊"
* patient.patId 0..1 string "病歷號" "病歷號 (參與醫院必須註冊命名系統)"
* patient.name 1..1 HumanName "姓名" "姓名"
* patient.idCard 1..1 string "身分證號" "身分證號"
* patient.birthday 1..1 date "出生日期" "出生日期"
* patient.gender 1..1 code "病人性別" "病人性別"

// 疾病資訊
* diagnosis 1..1 BackboneElement "疾病資訊" "疾病資訊"
* diagnosis.icd10cmCode 1..1 code "國際疾病分類代碼 (sequence=1)，共病症 (sequence>=2)" "國際疾病分類代碼 (sequence=1)，共病症 (sequence>=2)"
* diagnosis.diagDate 0..* date "診斷日期" "YYYYMMDD，西元年月日，民國前為負數，sequence=1時為必填"
* diagnosis.diagCurrentStatus 1..1 code "簡要病摘。連結院內HIS系統之簡要病摘，或填寫原基因定序檢測之申請理由。" "簡要病摘。連結院內HIS系統之簡要病摘，或填寫原基因定序檢測之申請理由。"

//基因資訊
* gene 0..* BackboneElement "基因資訊" "基因資訊"
* gene.genTestCode 0..* CodeableConcept "基因檢測代碼" "基因檢測代碼"
* gene.mutationType 0..* CodeableConcept "基因突變類型" "基因突變類型"
* gene.specimenType 0..* CodeableConcept "基因檢測檢體類型" "基因檢測檢體類型"
* gene.genMethod 0..* CodeableConcept "基因檢測方法" "基因檢測方法"
* gene.genDate 0..* dateTime "基因檢測日期" "基因檢測日期"
* gene.genOrg 0..* string "基因檢測機構" "基因檢測機構"
* gene.genResult 0..* CodeableConcept "基因檢測分析結果" "基因檢測分析結果"
* gene.genInterpretation 0..* CodeableConcept "基因臨床判讀結果" "基因臨床判讀結果，醫師判讀結果"
* gene.genPdf 0..* base64Binary "基因報告（檔案路徑）" "基因報告（請填寫完整檔案路徑）"
* gene.genPdfTitle 0..* string "基因報告名稱" "基因報告名稱"




