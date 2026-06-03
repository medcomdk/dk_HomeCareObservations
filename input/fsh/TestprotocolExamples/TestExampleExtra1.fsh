Instance: ReceiveTestExampleExtra1
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExampleExtra1"
Description: "Extra testxample 1"
Usage: #example
* type = $BundleType#message
* timestamp = 2026-06-02T00:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExampleExtra1-MessageHeader"
* entry[=].resource = ReceiveTestExampleExtra1-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatientExtra"
* entry[=].resource = BrunoElmerPatientExtra
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExampleExtra1-DiagnosticReport"
* entry[=].resource = ReceiveTestExampleExtra1-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JoannaAcuteNursePractitionerRole"
* entry[=].resource = JoannaAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JoannaAcuteNurse"
* entry[=].resource = JoannaAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrgKnownDr"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrgKnownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExampleExtra1-Provenance"
* entry[=].resource = ReceiveTestExampleExtra1-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoExtra1"
* entry[=].resource = GlucoseObservationOnBrunoExtra1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoExtra1"
* entry[=].resource = CReaktiveProteinObservationOnBrunoExtra1

Instance: ReceiveTestExampleExtra1-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExampleExtra1 Message Header"
Description: "Message Header for ReceiveTestExampleExtra1"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrgKnownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExampleExtra1-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.2"

Instance: ReceiveTestExampleExtra1-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExampleExtra1 Diagnostic Report"
Description: "Diagnostic Report for the ReceiveTestExampleExtra1"
Usage: #inline
* status = #final
* issued = 2026-06-02T08:37:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatientExtra)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JoannaAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoExtra1)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoExtra1)

Instance: ReceiveTestExampleExtra1-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExampleExtra1 Provenance"
Description: "Provenance for the ReceiveTestExampleExtra1"
Usage: #inline
* target = Reference(ReceiveTestExampleExtra1-MessageHeader)
* occurredDateTime = 2026-06-02T09:00:00+02:00
* recorded = 2026-06-02T08:37:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)


Instance: JoannaAcuteNurse
InstanceOf: MedComCorePractitioner
Title: "Acute nurse"
Description: "Acute nurse. Used in testprotocol test examples."
Usage: #inline
* name
  * given = "Joanna"
  * family = "Pedersen"
* telecom
  * system = #phone
  * value = "+45 05577668"

Instance: JoannaAcuteNursePractitionerRole
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner. Used in testprotocol test examples."
Usage: #inline
* practitioner = Reference(JoannaAcuteNurse)
* code = $PractitionerRole#sygeplejerske

Instance: BrunoElmerPatientExtra
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Used in testprotocol test examples."
Usage: #inline
* identifier[cpr].value = "2509479989"
* name[official]
  * use = #official
  * given[0] = "Bruno"
  * given[1] = "Test"
  * family = "Elmer"

Instance: GlucoseObservationOnBrunoExtra1
InstanceOf: MedComHomeCareObservation
Title: "Glucose measurement"
Description: "Glucose measurement on Bruno Elmer. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU22089 "P(kB)—Glucose; stofk. = ? mmol/L"
* valueQuantity.value = 6.5
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2026-06-02T08:37:00+02:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: CReaktiveProteinObservationOnBrunoExtra1
InstanceOf: MedComHomeCareObservation
Title: "C-reaktive protein [CRP];P on Bruno"
Description: "C-reaktive protein [CRP] test performed by acute care team on Bruno."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU19748 "P—C-reaktivt protein; massek. = ? mg/L"
* valueQuantity.value = 30
* valueQuantity.unit = "mg/L"
* effectiveDateTime = 2026-06-02T08:37:00+02:00
* subject = Reference(BrunoElmerPatientExtra)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"