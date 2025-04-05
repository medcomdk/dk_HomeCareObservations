Profile: MedComHomeCareObservationDiagnosticReport
Parent: MedComCoreDiagnosticReport
Id: medcom-homecareobservation-diagnosticreport
Title: "MedComHomeCareObservationDiagnosticReport"
Description: "This resource is intenden to be used in relation with a HomeCareObservation message"
* conclusion ^short = "A comment relevant for all observations in the report and necessary to interpret and understand the results (Danish:Klinisk kommentar)."
* result only Reference(MedComHomeCareObservation)
* result ^type.aggregation = #bundled
* status.value = #final
* performer 2..2 MS
* performer only Reference(MedComProducerOrganization or MedComCorePractitionerRole)
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #closed
* performer ^slicing.ordered = false
* performer ^slicing.description = "Slice of observation codes"
* performer contains 
    ProducerOrganization 1..1 and
    PractitionerRole 1..1
* performer[ProducerOrganization] only Reference(MedComProducerOrganization)
* performer[ProducerOrganization] ^type.aggregation = #bundled
* performer[ProducerOrganization] ^short = "Producer organization of the observations. Shall include a producer-ID (Danish: Producent-ID) of the producer"
* performer[PractitionerRole] only Reference(MedComCorePractitionerRole)
* performer[PractitionerRole] ^type.aggregation = #bundled
* performer[PractitionerRole] obeys medcom-homecareReport-1
* performer[PractitionerRole] obeys medcom-homecareReport-2
* performer[PractitionerRole] obeys medcom-homecareReport-3
* performer ^short = "Performer of the observations. Shall include a name, practitioner role, relevant telephone of the producer."
* meta.security 0..1 MS SU
* meta.security = $v3-Confidentiality#R "Restricted"

Invariant: medcom-homecareReport-1
Description: "There shall exist a practitioner role when using a PractitionerRole as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().code.coding.code.exists()"

Invariant: medcom-homecareReport-2
Description: "There shall exist a name of the healtcare worker that performed the observations, as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().name.exists()"

Invariant: medcom-homecareReport-3
Description: "There shall exist a telecom to the organization form the healthcare worker is part of, as author in a HomeCare Report."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().telecom.where(system = 'phone').exists()"



Instance: 870333ac-3134-4ae6-8257-86e0b0537c5f
InstanceOf: MedComHomeCareObservationDiagnosticReport
Usage: #example
Title: "HomeCareDiagnosticReport: spot test and EKG"
Description: "Spot test and EKG performed by the acute care team on a subject."
* status = $StatusCodeDiagnosticReport#final
* issued = 2023-09-12T12:24:08+02:00
* code = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer[ProducerOrganization] = Reference(ef5cb9a6-835f-4d18-a34e-179c578b9a2a)
* performer[PractitionerRole] = Reference(6ff69f1c-690d-11ed-9022-0242ac120002)
* result[+] = Reference(7fcb76a7-839b-4392-a2ff-f30035faca34)
* result[+] = Reference(f70ae8b7-c1af-44a2-a21a-570c552dd7cc)
* result[+] = Reference(1b089a05-0a5f-479d-9cbd-921a13470221)
* result[+] = Reference(4a94a70e-6957-47a8-bec7-3e27b3145668)
* result[+] = Reference(d2b89faa-979a-430d-8887-21ccdf6f238b)
* result[+] = Reference(f84143f7-f586-477f-af56-e50c7d152605)
* result[+] = Reference(b22fcbe0-4977-433e-ad1c-d6545bc8c1cb)
* result[+] = Reference(1e2351e2-77df-4135-a77b-6a4c39e4a4ca)
* result[+] = Reference(0e4a5452-1804-42d3-82ed-484df20a09f0)
* result[+] = Reference(470d39e4-d3f9-4301-82eb-b957ba33475e)
* media.link[+] = Reference(cb277ee2-5d96-4762-829d-d36449b2b17f)
* conclusion = "EKG udført. Normal sinusrytme."



Instance: 6d08f000-33cc-41f3-a7c2-c086d53d31a7
InstanceOf: MedComHomeCareObservationDiagnosticReport
Usage: #example
Title: "HomeCareDiagnosticReport: Urine dipsticks tests and refused consent"
Description: "Urine dipstick tests performed by the acute care team on a subject, that has refused consent."
* status = $StatusCodeDiagnosticReport#final
* issued = 2023-09-12T12:24:08+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* performer[ProducerOrganization] = Reference(72cc3a2c-1dda-4b95-b50a-0f7ac19640f4)
* performer[PractitionerRole] = Reference(4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf)
* result[+] = Reference(4b8f899a-df12-4301-8287-9a77d46ded3d)
* result[+] = Reference(f58819ff-d727-4740-a4ef-44eefc77022e)
* result[+] = Reference(2fc2c078-825b-491d-9f8e-34926eb4f06f)
* meta.security.code = $v3-Confidentiality#R
* meta.security.display = "Restricted"


Instance: efb1ed12-6a5d-4342-9572-861071644e46
InstanceOf: MedComHomeCareObservationDiagnosticReport
Usage: #example
Title: "HomeCareDiagnosticReport:TOBS and ABC examination"
Description: "TOBS and ABC examination of Elmer"
* status = $StatusCodeDiagnosticReport#final
* issued = 2023-09-12T12:24:19+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* performer[ProducerOrganization] = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* performer[PractitionerRole] = Reference(4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf)
* result[+] = Reference(3fd3835d-1758-4d22-8547-000182752817)
* result[+] = Reference(ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1)
* result[+] = Reference(8917f29d-269c-4bb3-8ce9-d255c351d52b)
* result[+] = Reference(6bf03841-8397-4a2a-9f9a-8966b0cfa571)
* result[+] = Reference(85fd1372-cf02-49c6-bd45-7205f5541a66)
* result[+] = Reference(f64a0a78-53cf-4a7f-9b89-4a2338a4935c)
* conclusion = "ABCDE
SeFølLyt-Princippet
A.	RF 19 - påskyndet men regelmæssig, fri respiration. SAT 93%
B.	Puls 92 palperet på venstre håndled. Fyldig regelmæssig. Fin kapilærrespons
C.	BT 147/83 - klamtsvedende. Kolde ekstremiteter. 
D.	Reagerer habituelt. Pupilreaktion i.a. VAS 7. Bl.s. 6,8
E.	Temperatur 38,7 Målt rektalt"


// Modified diagostic repport 
Instance: cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919
InstanceOf: MedComHomeCareObservationDiagnosticReport
Usage: #example
Title: "Modified HomeCareDiagnosticReport:TOBS and ABC examination"
Description: "Example of a modified HomeCareDiagnosticReport with TOBS and ABC examination of Elmer"
* status = $StatusCodeDiagnosticReport#corrected
* issued = 2023-09-12T12:34:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* performer[ProducerOrganization] = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* performer[PractitionerRole] = Reference(4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf)
* result[+] = Reference(3fd3835d-1758-4d22-8547-000182752817)
* result[+] = Reference(ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1)
* result[+] = Reference(8917f29d-269c-4bb3-8ce9-d255c351d52b)
* result[+] = Reference(6bf03841-8397-4a2a-9f9a-8966b0cfa571)
* result[+] = Reference(85fd1372-cf02-49c6-bd45-7205f5541a66)
* result[+] = Reference(f64a0a78-53cf-4a7f-9b89-4a2338a4935c)
* conclusion = "ABCDE
SeFølLyt-Princippet
A.	RF 19 - påskyndet men regelmæssig, fri respiration. SAT 93%
B.	Puls 92 palperet på venstre håndled. Fyldig regelmæssig. Fin kapilærrespons
C.	BT 147/83 - klamtsvedende. Kolde ekstremiteter. 
D.	Reagerer habituelt. Pupilreaktion i.a. VAS 7. Bl.s. 6,8
E.	Temperatur 38,7 Målt rektalt


Patienten har nægtet at spise og drikke i løbet af dagen."

// Cancelled diagostic repport 
Instance: 4f013d3a-575c-447d-83e1-7a5fb7f7b0de
InstanceOf: MedComHomeCareObservationDiagnosticReport
Usage: #example
Title: "Cancelled HomeCareDiagnosticReport: TOBS and ABC examination"
Description: "Example of a cancelled HomeCareDiagnosticReport, with TOBS and ABC examination of Elmer"
* status = $StatusCodeDiagnosticReport#cancelled
* issued = 2023-09-12T13:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* performer[ProducerOrganization] = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* performer[PractitionerRole] = Reference(4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf)
* result[+] = Reference(3fd3835d-1758-4d22-8547-000182752817)
* result[+] = Reference(ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1)
* result[+] = Reference(8917f29d-269c-4bb3-8ce9-d255c351d52b)
* result[+] = Reference(6bf03841-8397-4a2a-9f9a-8966b0cfa571)
* result[+] = Reference(85fd1372-cf02-49c6-bd45-7205f5541a66)
* result[+] = Reference(f64a0a78-53cf-4a7f-9b89-4a2338a4935c)
* conclusion = "Cancellation due to incorrect CPR-number"
