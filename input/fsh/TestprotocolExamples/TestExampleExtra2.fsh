Instance: ReceiveTestExampleExtra2
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExampleExtra2"
Description: "Extra test example 2"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-12-31T23:59:00+01:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExampleExtra2-MessageHeader"
* entry[=].resource = ReceiveTestExampleExtra2-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatientExtra"
* entry[=].resource = BrunoElmerPatientExtra
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExampleExtra2-DiagnosticReport"
* entry[=].resource = ReceiveTestExampleExtra2-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JoannaAcuteNursePractitionerRole"
* entry[=].resource = JoannaAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JoannaAcuteNurse"
* entry[=].resource = JoannaAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AllesLaegehusTonderPraksisRequesterOrgUnknownDr"
* entry[=].resource = AllesLaegehusTonderPraksisRequesterOrgUnknownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExampleExtra2-Provenance"
* entry[=].resource = ReceiveTestExampleExtra2-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoExtra2"
* entry[=].resource = GlucoseObservationOnBrunoExtra2
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoExtra2"
* entry[=].resource = CReaktiveProteinObservationOnBrunoExtra2
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/MonocytesObservationOnBrunoExtra2"
* entry[=].resource = MonocytesObservationOnBrunoExtra2

Instance: ReceiveTestExampleExtra2-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExampleExtra2 Message Header"
Description: "Message Header for ReceiveTestExampleExtra2"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=923641000016002"
* destination[primary].receiver = Reference(AllesLaegehusTonderPraksisRequesterOrgUnknownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExampleExtra2-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExampleExtra2-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExampleExtra2 Diagnostic Report"
Description: "Diagnostic Report for the ReceiveTestExampleExtra2"
Usage: #inline
* status = #final
* issued = 2025-12-31T23:47:00+01:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatientExtra)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JoannaAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoExtra2)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoExtra2)

Instance: ReceiveTestExampleExtra2-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExampleExtra2 Provenance"
Description: "Provenance for the ReceiveTestExampleExtra2"
Usage: #inline
* target = Reference(ReceiveTestExampleExtra2-MessageHeader)
* occurredDateTime = 2025-12-31T23:59:00+01:00
* recorded = 2025-12-31T23:47:00+01:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)


Instance: AllesLaegehusTonderPraksisRequesterOrgUnknownDr
InstanceOf: MedComRequesterOrganization 
Title: "AgerskovlægepraksisUnknownDr"
Description: "Example of an organization Agerskov lægepraksis with a SOR, EAN and Ydrenummer identifier. Used in testprotocol test examples."
Usage: #inline
* identifier[SOR-ID].value = "923641000016002"
* identifier[EAN-ID].value = "5790002407475"
* identifier[Ydernummer].value = "043656"
* contact
  * extension[InitialsNotKnown]
    * valueCode = #unknown
* name = "Alles Lægehus Tønder"


Instance: GlucoseObservationOnBrunoExtra2
InstanceOf: MedComHomeCareObservation
Title: "Glucose measurement"
Description: "Glucose measurement on Bruno Elmer. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU22089 "P(kB)—Glucose; stofk. = ? mmol/L"
* valueQuantity.value = 6.9
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2025-12-31T23:47:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: CReaktiveProteinObservationOnBrunoExtra2
InstanceOf: MedComHomeCareObservation
Title: "C-reaktive protein [CRP];P on Bruno"
Description: "C-reaktive protein [CRP] test performed by acute care team on Bruno."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU19748 "P—C-reaktivt protein; massek. = ? mg/L"
* valueQuantity.value = 23
* valueQuantity.unit = "mg/L"
* effectiveDateTime = 2025-12-31T23:47:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: MonocytesObservationOnBrunoExtra2
InstanceOf: MedComHomeCareObservation
Title: "Monocytes observation on Bruno"
Description: "Monocytes observation on Bruno by acute care team. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU02840 "B—Monocytter; antalk. = ? × 10^9/L"
* valueQuantity.value = 0.8
* valueQuantity.unit = "10^9/L"
* note.text = "Lorem Ipsum dolor sit amet, consectetur adipiscing elit."
* effectiveDateTime = 2025-12-31T23:40:08+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"