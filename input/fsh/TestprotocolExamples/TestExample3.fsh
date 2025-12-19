Instance: ReceiveTestExample3
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExample3"
Description: "Test Example 3 used in the HomeCareObservation receive test protocol. E-cpr and no comments."
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExample3-MessageHeader"
* entry[=].resource = ReceiveTestExample3-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/PeterHansenECPRPatient"
* entry[=].resource = PeterHansenECPRPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExample3-DiagnosticReport"
* entry[=].resource = ReceiveTestExample3-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JohnAcuteNursePractitionerRole"
* entry[=].resource = JohnAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JohnAcuteNurse"
* entry[=].resource = JohnAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrgUnknownDr"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrgUnknownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExample3-Provenance"
* entry[=].resource = ReceiveTestExample3-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnPeterNoComment"
* entry[=].resource = GlucoseObservationOnPeterNoComment

Instance: ReceiveTestExample3-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExample3 Message Header"
Description: "Message Header for ReceiveTestExample3"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrgUnknownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExample3-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExample3-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExample3 Diagnostic Report"
Description: "Diagnostic Report for ReceiveTestExample3"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(PeterHansenECPRPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnPeterNoComment)

Instance: ReceiveTestExample3-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExample3 Provenance"
Description: "Provenance for ReceiveTestExample3"
Usage: #inline
* target = Reference(ReceiveTestExample3-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)