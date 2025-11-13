<div class="bg-success" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
</div>


### 專案介紹
<div  style="padding-left: 10px;"> 

<p>臺灣健保署基礎實作指引(Taiwan NHI Base Implementation Guide，簡稱TWNHIBASE IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在FHIR R4.0.1之標準基礎上，繼承TW Core IG V0.3.2 (2024-12-12)，進一步定義適用於「臺灣健保署基礎」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。</p>

</div>

### 專案背景

<div  style="padding-left: 10px;"> 

<p>衛生福利部中央健康保險署配合賴總統於健康台灣之「國家癌症防治計畫」政策，推動NGS申報資料收載、癌症重大傷病申請、癌藥事前審查申請及癌症個案療效追蹤等癌症醫療資訊之數位轉型，並以HL7 FHIR為核心技術架構，陸續建置「臺灣健保癌症用藥事前審查實作指引（TWPAS IG）」、「臺灣重大傷病實作指引（TWCI IG）」及「臺灣次世代基因定序檢測實作指引（TWNGS IG）」等三項實作指引，期透過資料有效互通，達成以病人為中心之完整照護。</p>
<p>為確保健保署各實作指引間之資料結構一致、欄位定義共用、命名規則統一，並促進跨情境資料交換與延展應用，健保署建立「臺灣健保署基礎實作指引（TWNHIBASE IG）」作為所有實作指引之共同基礎。TWNHIBASE IG整合健保署各業務情境中重複出現之共通欄位與結構，統一定義共用的FHIR Profiles與專門術語，以提升資料重用性與一致性，透過本指引，健保署可提供統一且可延展的資料架構，供各情境實作指引引用與擴充，降低重複開發與維護成本，並推動健保資料交換標準化與智慧醫療生態系的長期發展，期以強化資料整合與應用能量，建構完善的精準醫療環境，提升醫療照護之效率與品質。</p>
</div>


### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>本IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：本IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：本IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用本IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：本IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>本IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：本IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：本IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用本IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="https://nhicore.nhi.gov.tw/base/history.html">版本異動</a></strong>：若本IG網站的版本有所異動，皆可透過<a href="https://nhicore.nhi.gov.tw/base/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
<table class="grid">
    <thead>
        <tr class="header">
            <th style="width:10%">角色</th>
            <th style="width:30%">姓名</th>
            <th style="width:50%">機構</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="vertical-align: middle;">作者-IG</td>
            <td style="vertical-align: middle;">李麗惠</td>
            <td rowspan="4" style="vertical-align: middle;">國立臺北護理健康大學-健康事業管理系</td>
        </tr>
        <tr>
            <td>作者-IG</td>
            <td>曾鈺珈</td>
        </tr>
		<tr>
            <td>作者-IG</td>
            <td>李奇安</td>
        </tr>
		<tr>
            <td>作者-IG</td>
            <td>林伃瑤</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>張如薰</td>
            <td rowspan="4" style="vertical-align: middle;">衛生福利部中央健康保險署-醫審及藥材組</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>涂奇君</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>張佐安</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td>鄧嘉欣</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td colspan="2">醫藥品查驗中心(CDE)</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td colspan="2">衛生福利部中央健康保險署-資訊組</td>
        </tr>
        <tr>
            <td>貢獻者-IG</td>
            <td colspan="2">衛生福利部資訊處</td>
        </tr>
    </tbody>
</table>