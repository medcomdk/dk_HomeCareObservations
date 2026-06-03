Instance: ReceiveTestExample2
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExample2"
Description: "Test Example 2 used in HomeCareObservation receive test protocol.
With a clinical comment and requesting doctor's initials are unknown. 
Two observations: One with an analysis comment + an NPU code and the other without an analysis comment and a result using the MedComObservation valueset. 
Both observations use a comparator ('<' or '>')"
Usage: #example
* type = $BundleType#message
* timestamp = 2026-05-05T21:27:00+02:00
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
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/HighRespirationObservationOnBrunoNoComment2"
* entry[=].resource = HighRespirationObservationOnBrunoNoComment2

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
* issued = 2026-05-05T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoWithComment)
* result[+] = Reference(HighRespirationObservationOnBrunoNoComment2)
* conclusion = "Proin aliquet sit amet justo quis auctor. Integer malesuada tempor purus sit amet dictum. Nulla dictum pharetra erat sit amet faucibus. Fusce porttitor, lectus sed volutpat pulvinar, tortor leo sodales elit, non mattis ligula enim dignissim ex. Donec ornare laoreet elit dapibus maximus. Mauris malesuada enim vitae ligula feugiat, eget rutrum orci auctor. Aenean feugiat volutpat magna ut venenatis. Proin eu ornare metus, in pretium sem. Aenean id bibendum urna. Sed ultricies mauris in erat bibendum rhoncus. Suspendisse ac porttitor tellus. Sed molestie pharetra turpis, pellentesque ultrices tortor sodales sit amet. Integer et nulla luctus, fermentum felis eget, consequat est. Curabitur sed blandit nunc. Etiam cursus neque id diam consequat pharetra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. <br/> Nulla vitae lectus ut ipsum lobortis porttitor id eu purus. In finibus erat vitae orci volutpat, in euismod lorem dignissim. Vivamus volutpat orci sit amet velit pulvinar, id elementum lacus placerat. Donec scelerisque ligula at risus auctor venenatis ac et nibh. Donec eget cursus ipsum. Etiam interdum, velit vitae pulvinar egestas, quam risus interdum nisi, ut porta odio magna at diam. Cras dignissim tempor urna id condimentum. Cras molestie sagittis venenatis. Aenean at rutrum tellus, sit amet mollis elit. <br/> Praesent dictum lacinia enim sit amet scelerisque. Proin cursus enim luctus mi fringilla rhoncus. Praesent sagittis, erat vel auctor pretium, elit leo vulputate quam, a tincidunt ante justo sit amet eros. Duis condimentum, dui sed finibus convallis, ipsum neque dictum mauris, quis pulvinar mauris mi feugiat enim. Proin ullamcorper nibh lorem, nec consequat erat rhoncus ut. Praesent nisi ligula, molestie in nulla a, interdum sagittis neque. Nulla viverra elit ac eros mattis ultricies. Pellentesque a iaculis tellus. <br/> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo nibh nulla, sit amet interdum ex condimentum ac. Mauris sodales placerat mollis. Suspendisse non quam pretium, ultricies nisl in, vehicula neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut condimentum vel orci efficitur viverra. Praesent posuere molestie lacus at consectetur. Vivamus pharetra, eros vel porta pretium, urna sem sodales nisi, ac tristique massa nisl nec sem. Donec at massa non felis ullamcorper eleifend. Morbi sit amet pharetra orci. Vivamus laoreet viverra tempor."

Instance: ReceiveTestExample2-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExample2 Provenance"
Description: "Provenance for the ReceiveTestExample2"
Usage: #inline
* target = Reference(ReceiveTestExample2-MessageHeader)
* occurredDateTime = 2026-05-05T15:00:00+02:00
* recorded = 2026-05-05T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)

