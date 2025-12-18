Instance: ReceiveTestExample2
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExample2"
Description: "Test Example 2 used in HomeCareObservation receive test protocol.
With a clinical comment and unknown requesting doctors initials.
Two observations. One with a comment + an NPU code and the other without a comment and a result using the MedComObservation valueset and a '>' sign"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-07T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExample2-MessageHeader"
* entry[=].resource = ReceiveTestExample2-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatient"
* entry[=].resource = BrunoElmerPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExample2-DiagnosticReport"
* entry[=].resource = ReceiveTestExample2-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JohnAcuteNursePractitionerRole"
* entry[=].resource = JohnAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JohnAcuteNurse"
* entry[=].resource = JohnAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrgUnknownDr"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrgUnknownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExample2-Provenance"
* entry[=].resource = ReceiveTestExample2-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoWithComment"
* entry[=].resource = GlucoseObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/HighRespirationObservationOnBrunoNoComment"
* entry[=].resource = HighRespirationObservationOnBrunoNoComment

Instance: ReceiveTestExample2-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExample2 Message Header"
Description: "Message Header for ReceiveTestExample2"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrgUnknownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExample2-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExample2-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExample2 Diagnostic Report"
Description: "Diagnostic Report for the ReceiveTestExample2"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoWithComment)
* result[+] = Reference(HighRespirationObservationOnBrunoNoComment)
* conclusion = "Some random conclusion on the diagnostic report as a whole."

Instance: ReceiveTestExample2-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExample2 Provenance"
Description: "Provenance for the ReceiveTestExample2"
Usage: #inline
* target = Reference(ReceiveTestExample2-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)

