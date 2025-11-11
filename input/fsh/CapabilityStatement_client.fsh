Instance: CapabilityStatementTWNHIBASEClient
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://nhicore.nhi.gov.tw/base/CapabilityStatement/CapabilityStatementTWNHIBASEClient"
* version = "0.0.1"
* name = "CapabilityStatementTWNHIBASEClient"
* title = "臺灣健保署基礎-用戶端(TWNHIBASE Client)"
* status = #active
* experimental = false
* publisher = "衛生福利部中央健康保險署"
* date = "2025-11-07"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://nhicore.nhi.gov.tw/base/ImplementationGuide/tw.gov.mohw.nhi.base"
* description = "臺灣健保署基礎實作指引(TWNHIBASE IG)用戶端(Client)之能力聲明"
* rest.mode = #client
* rest.documentation = "臺灣健保署基礎-用戶端(TWNHIBASE Client)建議應該（SHOULD）使用臺灣健保署基礎伺服端（TWNHIBASE Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個臺灣健保署基礎Profile(s)。"
* rest.security.description = "有關要求和建議，請參閱[安全性](security.html)。"

* rest.resource[+].type = #Claim
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Claim-twnhibase"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/base/SearchParameter/Claim-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[0] = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Organization-twnhibase"
* rest.resource[=].supportedProfile[1] = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Organization-gene-twnhibase"
* rest.resource[=].supportedProfile[2] = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-govt-twcore"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Patient-twnhibase"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "name"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/base/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://nhicore.nhi.gov.tw/base/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD

* rest.resource[+].type = #Observation
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Observation-diagnostic-twnhibase"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Specimen
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Specimen-twnhibase"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #DocumentReference
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/DocumentReference-twnhibase"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Coverage
* rest.resource[=].profile = "https://nhicore.nhi.gov.tw/base/StructureDefinition/Coverage-twnhibase"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <h2 id=\"title\">臺灣健保署基礎-用戶端(TWNHIBASE Client)</h2>
    <ul>
        <li>實作指引版本：0.0.1</li>
        <li>FHIR版本：4.0.1</li>
        <li>支援格式：<code>json</code></li>
        <li>發佈日：2025-11-07</li>
        <li>發佈者：衛生福利部中央健康保險署</li>
    </ul>
    <h3 id=\"shallIGs\">建議應該（SHOULD）支援以下實作指引</h3>
    <ul>
        <li><a href=\"index.html\">臺灣健保署基礎實作指引(TWNHIBASE IG)</a></li>
    </ul>
    <h2 id=\"rest\">Client的FHIR RESTful功能要求</h2>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h3 id=\"mode1\" class=\"panel-title\">模式: <code>client</code></h3>
        </div>
        <div class=\"panel-body\">
            <div>
                <p>臺灣健保署基礎-用戶端(TWNHIBASE Client)<b>建議應該(SHOULD)</b>：<br/>
                    (1)使用臺灣健保署基礎伺服端（TWNHIBASE Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個臺灣健保署基礎Profile（s）</p>
                <p>安全性：<br/>
                    (1)有關要求和建議，請參閱<a href=\"security.html\">安全性</a>。</p>
            </div>
        </div>
    </div>
    <h3 id=\"resourcesCap1\">Resources或Profiles的RESTful功能</h3>
    <h4 id=\"resourcesSummary1\">Summary</h4>
    <p>共有七類Resources支援查詢，查詢參數如表列：</p>
    <div class=\"table-responsive\">
        <table class=\"table table-condensed table-hover\">
            <thead>
                <tr>
                    <th><b>Resource型別</b></th>
                    <th><b>Profile</b></th>
                    <th>Create</th>
                    <th>Read</th>
                    <th>VRead</th>
                    <th>Delete</th>
                    <th>Update</th>
                    <th><b>支援的查詢參數</b></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href=\"#Claim1-1\">Claim</a></td>
                    <td><a href=\"StructureDefinition-Claim-twnhibase.html\">事前審查-Claim TWNHIBASE</a> </td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>patient</td>
                </tr>
                <tr>
                    <td><a href=\"#Organization1-2\">Organization</a></td>
                    <td>支援的Profiles<br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Organization-twnhibase.html\">機構-Organization TWNHIBASE</a><br />\u00a0\u00a0
                        <a href=\"StructureDefinition-Organization-gene-twnhibase.html\">基因檢測機構-Organization Genetic Testing TWNHIBASE</a><br />\u00a0\u00a0
                        <a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html\">TW Core Organization Government</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Patient1-3\">Patient</a></td>
                    <td><a href=\"StructureDefinition-Patient-twnhibase.html\">病人資訊-Patient TWNHIBASE</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>name, identifier</td>
                </tr>
                <tr>
                    <td><a href=\"#Observation1-4\">Observation</a></td>
                    <td><a href=\"StructureDefinition-Observation-diagnostic-twnhibase.html\">基因資訊-Observation Diagnostic TWNHIBASE</a> </td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Specimen1-5\">Specimen</a></td>
                    <td><a href=\"StructureDefinition-Specimen-twnhibase.html\">基因檢測檢體-Specimen TWNHIBASE</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#DocumentReference1-6\">DocumentReference</a></td>
                    <td><a href=\"StructureDefinition-DocumentReference-twnhibase.html\">文件參照-DocumentReference TWNHIBASE</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Coverage1-7\">Coverage</a></td>
                    <td><a href=\"StructureDefinition-Coverage-twnhibase.html\">健保事前審查計畫-Coverage TWNHIBASE</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <hr />
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Claim1-1\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>Claim</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Claim-twnhibase.html\">事前審查-Claim TWNHIBASE</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>建議應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Claim-patient.html\">patient</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Claim?patient={Type/}[id]</code><br/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
   <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Organization1-2\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>Organization</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-3\"><span class=\"lead\">Core FHIR Resource</span><br /><a href=\"http://hl7.org/fhir/R4/organization.html\">Organization</a></div>
                    <div class=\"col-lg-4\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-6\"><span class=\"lead\">支援的Profiles</span>
                        <p><a href=\"StructureDefinition-Organization-twnhibase.html\">機構-Organization TWNHIBASE</a><br />
                            <a href=\"StructureDefinition-Organization-gene-twnhibase.html\">基因檢測機構-Organization Genetic Testing TWNHIBASE</a><br />
                            <a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-govt-twcore.html\">TW Core Organization Government</a>
                        </p>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Patient1-3\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>Patient</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Patient-twnhibase.html\">病人資訊-Patient TWNHIBASE</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>建議應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Patient-name.html\">name</a></td>
                                    <td><code>string</code></td>
                                    <td>
                                        <code>GET [base]/Patient?name=[string]</code><br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>建議應該（SHOULD）</b></td>
                                    <td><a href=\"SearchParameter-Patient-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Patient?identifier=[code]</code><br/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Observation1-4\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>Observation</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Observation-diagnostic-twnhibase.html\">基因資訊-Observation Diagnostic TWNHIBASE</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Specimen1-5\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>Specimen</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Specimen-twnhibase.html\">基因檢測檢體-Specimen TWNHIBASE</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"DocumentReference1-6\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>DocumentReference</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-DocumentReference-twnhibase.html\">文件參照-DocumentReference TWNHIBASE</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Coverage1-7\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 建議應該（SHOULD）</span>Coverage</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Coverage-twnhibase.html\">健保事前審查計畫-Coverage TWNHIBASE</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>建議應該（SHOULD）</strong>支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
</div>"