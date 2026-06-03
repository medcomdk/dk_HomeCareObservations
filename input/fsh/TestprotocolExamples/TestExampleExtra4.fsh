Instance: ReceiveTestExampleExtra4
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExampleExtra4"
Description: "Extra test example 4"
Usage: #example
* type = $BundleType#message
* timestamp = 2020-01-02T12:59:00+01:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExampleExtra4-MessageHeader"
* entry[=].resource = ReceiveTestExampleExtra4-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatientExtra"
* entry[=].resource = BrunoElmerPatientExtra
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExampleExtra4-DiagnosticReport"
* entry[=].resource = ReceiveTestExampleExtra4-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JoannaAcuteNursePractitionerRole"
* entry[=].resource = JoannaAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JoannaAcuteNurse"
* entry[=].resource = JoannaAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AllesLaegehusTonderPraksisRequesterOrgUnknownDr"
* entry[=].resource = AllesLaegehusTonderPraksisRequesterOrgUnknownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExampleExtra4-Provenance"
* entry[=].resource = ReceiveTestExampleExtra4-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoExtra4"
* entry[=].resource = GlucoseObservationOnBrunoExtra4
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoExtra4"
* entry[=].resource = CReaktiveProteinObservationOnBrunoExtra4

Instance: ReceiveTestExampleExtra4-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExampleExtra4 Message Header"
Description: "Message Header for ReceiveTestExampleExtra4"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=923641000016002"
* destination[primary].receiver = Reference(AllesLaegehusTonderPraksisRequesterOrgUnknownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExampleExtra4-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExampleExtra4-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExampleExtra4 Diagnostic Report"
Description: "Diagnostic Report for the ReceiveTestExampleExtra4"
Usage: #inline
* status = #final
* issued = 2020-01-02T12:47:00+01:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatientExtra)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JoannaAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoExtra4)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoExtra4)

Instance: ReceiveTestExampleExtra4-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExampleExtra4 Provenance"
Description: "Provenance for the ReceiveTestExampleExtra4"
Usage: #inline
* target = Reference(ReceiveTestExampleExtra4-MessageHeader)
* occurredDateTime = 2020-01-02T12:59:00+01:00
* recorded = 2020-01-02T12:47:00+01:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)



Instance: GlucoseObservationOnBrunoExtra4
InstanceOf: MedComHomeCareObservation
Title: "Glucose measurement"
Description: "Glucose measurement on Bruno Elmer. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU22089 "P(kB)—Glucose; stofk. = ? mmol/L"
* valueQuantity.value = 8.3
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2020-01-02T12:47:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: CReaktiveProteinObservationOnBrunoExtra4
InstanceOf: MedComHomeCareObservation
Title: "C-reaktive protein [CRP];P on Bruno"
Description: "C-reaktive protein [CRP] test performed by acute care team on Bruno."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU19748 "P—C-reaktivt protein; massek. = ? mg/L"
* valueQuantity.value = 41
* valueQuantity.unit = "mg/L"
* effectiveDateTime = 2020-01-02T12:47:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: MonocytesObservationOnBrunoExtra4
InstanceOf: MedComHomeCareObservation
Title: "Monocytes observation on Bruno"
Description: "Monocytes observation on Bruno by acute care team. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU02840 "B—Monocytter; antalk. = ? × 10^9/L"
* valueQuantity.value = 0.4
* valueQuantity.unit = "10^9/L"
* note.text = "Lorem Ipsum dolor sit amet, consectetur adipiscing elit."
* effectiveDateTime = 2020-01-02T12:47:00+01:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"