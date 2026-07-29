Instance: cla-1
InstanceOf: ClaimTWNHIBASE
Title: "事前審查-送核"
Description: "依據事前審查-Claim TWNHIBASE Profile呈現健保署基礎事前審查之範例。"
Usage: #example


* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType = https://nhicore.nhi.gov.tw/base/CodeSystem/nhi-apply-type#1 "送核"
* use = http://hl7.org/fhir/claim-use#preauthorization
* patient.reference = "Patient/pat-min"
* created = "2024-05-30"
* enterer.reference = "Practitioner/pra-min"
* provider.reference = "Organization/org-hosp-example"
* priority = https://nhicore.nhi.gov.tw/base/CodeSystem/nhi-tmhb-type#1 "一般事前審查申請"
* supportingInfo[geneInfo].sequence = 1
* supportingInfo[geneInfo].valueReference.reference = "Observation/obs-diagnostic-min" 
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept  = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#I50.812
* diagnosis.extension[recordedDate].valueDate = "2024-01-01"
* diagnosis.type.text = "Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI"
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.reference = "Coverage/cov-min"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Claim-twnhibase.html\">事前審查-Claim TWNHIBASE</a></p>
    </div>
    <p><b>狀態</b>：Active</p>
    <p><b>類型</b>：Institutional<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/CodeSystem/claim-type\">ClaimTypeCodes</a>#institutional)</span></p>
    <p><b>申報類別</b>：送核<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-apply-type.html\">NHI-申報類別值集</a>#1)</span></p>
    <p><b>目的</b>：Preauthorization</p>
    <p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a> &quot;王大明&quot;</p>
    <p><b>申請日期</b>：2024-05-30</p>
    <p><b>醫事機構代碼</b>：<a href=\"Organization-org-hosp-example.html\">Organization/org-hosp-example</a></p>
    <p><b>申請案件類別</b>：一般事前審查申請<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-nhi-tmhb-type.html\">NHI-申請案件類別值集</a>#1)</span></p>
    <h3>Diagnoses</h3>
    <p><b>診斷日期</b>：2024-01-01</p>
    <p><b>國際疾病分類代碼</b>：慢性右心臟衰竭<span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw\">臺灣健保署2023年中文版ICD-10-CM值集</a>#I50.812)</span></p>
    <p><b>簡要病摘</b>：Adenocarcinoma, descending colon, cT3N2M1a, cStage IVA, KRAS G12V, with multiple liver metastases, status post FOLFIRI</p>
        <blockquote>
        <p><b>supportingInfo</b></p>
        <p><b>sequence</b>：1</p>
        <p><b>category</b>：<span title=\"Codes:{https://nhicore.nhi.gov.tw/base/CodeSystem/nhi-supporting-info-type geneInfo}\">基因資訊</span></p>
        <p><b>value</b>：<a href=\"Observation-obs-diagnostic-min.html\">Observation/obs-diagnostic-min</a></p>
    </blockquote>
    <h3>Insurances</h3>
    <p><b>sequence</b>：1</p>
    <p><b>coverage</b>：<a href=\"Coverage-cov-min.html\">Coverage/cov-min</a></p>

</div>"
