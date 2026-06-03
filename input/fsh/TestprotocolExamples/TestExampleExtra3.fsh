Instance: ReceiveTestExampleExtra3
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExampleExtra3"
Description: "Extra test example 3"
Usage: #example
* type = $BundleType#message
* timestamp = 2014-11-27T14:59:00+01:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExampleExtra3-MessageHeader"
* entry[=].resource = ReceiveTestExampleExtra3-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatientExtra"
* entry[=].resource = BrunoElmerPatientExtra
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExampleExtra3-DiagnosticReport"
* entry[=].resource = ReceiveTestExampleExtra3-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JoannaAcuteNursePractitionerRole"
* entry[=].resource = JoannaAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JoannaAcuteNurse"
* entry[=].resource = JoannaAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AllesLaegehusTonderPraksisRequesterOrgUnknownDr"
* entry[=].resource = AllesLaegehusTonderPraksisRequesterOrgUnknownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExampleExtra3-Provenance"
* entry[=].resource = ReceiveTestExampleExtra3-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoExtra3"
* entry[=].resource = GlucoseObservationOnBrunoExtra3
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoExtra3"
* entry[=].resource = CReaktiveProteinObservationOnBrunoExtra3

Instance: ReceiveTestExampleExtra3-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExampleExtra3 Message Header"
Description: "Message Header for ReceiveTestExampleExtra3"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=923641000016002"
* destination[primary].receiver = Reference(AllesLaegehusTonderPraksisRequesterOrgUnknownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExampleExtra3-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExampleExtra3-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExampleExtra3 Diagnostic Report"
Description: "Diagnostic Report for the ReceiveTestExampleExtra3"
Usage: #inline
* status = #final
* issued = 2014-11-27T14:47:00+01:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatientExtra)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JoannaAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoExtra3)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoExtra3)

Instance: ReceiveTestExampleExtra3-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExampleExtra3 Provenance"
Description: "Provenance for the ReceiveTestExampleExtra3"
Usage: #inline
* target = Reference(ReceiveTestExampleExtra3-MessageHeader)
* occurredDateTime = 2014-11-27T14:59:00+01:00
* recorded = 2014-11-27T14:47:00+01:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)



Instance: GlucoseObservationOnBrunoExtra3
InstanceOf: MedComHomeCareObservation
Title: "Glucose measurement"
Description: "Glucose measurement on Bruno Elmer. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU22089 "P(kB)—Glucose; stofk. = ? mmol/L"
* valueQuantity.value = 4.5
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2014-11-27T13:45:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: CReaktiveProteinObservationOnBrunoExtra3
InstanceOf: MedComHomeCareObservation
Title: "C-reaktive protein [CRP];P on Bruno"
Description: "C-reaktive protein [CRP] test performed by acute care team on Bruno."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU19748 "P—C-reaktivt protein; massek. = ? mg/L"
* valueQuantity.value = 38
* valueQuantity.unit = "mg/L"
* effectiveDateTime = 2014-11-27T14:47:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: MonocytesObservationOnBrunoExtra3
InstanceOf: MedComHomeCareObservation
Title: "Monocytes observation on Bruno"
Description: "Monocytes observation on Bruno by acute care team. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU02840 "B—Monocytter; antalk. = ? × 10^9/L"
* valueQuantity.value = 1.2
* valueQuantity.unit = "10^9/L"
* note.text = "Lorem Ipsum dolor sit amet, consectetur adipiscing elit."
* effectiveDateTime = 2014-11-27T14:40:08+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"