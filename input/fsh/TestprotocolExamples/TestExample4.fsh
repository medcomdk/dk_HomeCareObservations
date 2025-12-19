Instance: ReceiveTestExample4
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExample4"
Description: "Test Example 4 used in the HomeCareObservation receive test protocol. Many observations"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExample4-MessageHeader"
* entry[=].resource = ReceiveTestExample4-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatient"
* entry[=].resource = BrunoElmerPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExample4-DiagnosticReport"
* entry[=].resource = ReceiveTestExample4-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JohnAcuteNursePractitionerRole"
* entry[=].resource = JohnAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JohnAcuteNurse"
* entry[=].resource = JohnAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrgKnownDr"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrgKnownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExample4-Provenance"
* entry[=].resource = ReceiveTestExample4-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoNoComment"
* entry[=].resource = GlucoseObservationOnBrunoNoComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/HighRespirationObservationOnBrunoNoComment"
* entry[=].resource = HighRespirationObservationOnBrunoNoComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoNoComment"
* entry[=].resource = CReaktiveProteinObservationOnBrunoNoComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/HaemoglobinObservationOnBrunoWithComment"
* entry[=].resource = HaemoglobinObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/LeukocytObservationOnBrunoWithComment"
* entry[=].resource = LeukocytObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/LymphocyteObservationOnBrunoWithComment"
* entry[=].resource = LymphocyteObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/MonocytesObservationOnBrunoWithComment"
* entry[=].resource = MonocytesObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/NeutrophilocytesObservationOnBrunoWithComment"
* entry[=].resource = NeutrophilocytesObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/EosinofilocytObservationOnBrunoWithComment"
* entry[=].resource = EosinofilocytObservationOnBrunoWithComment

Instance: ReceiveTestExample4-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExample4 MessageHeader"
Description: "Message Header for ReceiveTestExample4"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrgKnownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExample4-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExample4-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExample4 Diagnostic Report"
Description: "Diagnostic Report for ReceiveTestExample4"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoNoComment)
* result[+] = Reference(HighRespirationObservationOnBrunoNoComment)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoNoComment)
* result[+] = Reference(HaemoglobinObservationOnBrunoWithComment)
* result[+] = Reference(LeukocytObservationOnBrunoWithComment)
* result[+] = Reference(LymphocyteObservationOnBrunoWithComment)
* result[+] = Reference(MonocytesObservationOnBrunoWithComment)
* result[+] = Reference(NeutrophilocytesObservationOnBrunoWithComment)
* result[+] = Reference(EosinofilocytObservationOnBrunoWithComment)
* conclusion = "All observations are within normal limits, except for the heart rate which is elevated after exercise. Further monitoring is recommended.
Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi"

Instance: ReceiveTestExample4-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExample4 Provenance"
Description: "Provenance for ReceiveTestExample4"
Usage: #inline
* target = Reference(ReceiveTestExample4-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)