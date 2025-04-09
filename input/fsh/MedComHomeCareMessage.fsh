Profile: MedComHomeCareObservationMessage
Parent: MedComMessagingMessage
Id: medcom-homecareobservation-message
Title: "MedComHomeCareObservationMessage"
Description: "The HomeCareObservation Message is used exchange of the observations results performed by the municipal acute care team to the general practitioner."
* obeys medcom-homecareObsMessage-1
* obeys medcom-homecareObsMessage-2


Invariant: medcom-homecareObsMessage-1
Description: "The MessageHeader shall conform to medcom-homecareobservation-messageheader profile"
Severity: #error
Expression: "entry[0].resource.conformsTo('http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecareobservation-messageheader')"

Invariant: medcom-homecareObsMessage-2
Description: "All provenance resources shall contain activities from medcom-HomeCareObservation-messagingActivities valueset"
Severity: #error
Expression: "entry.resource.ofType(Provenance).all(activity.memberOf('http://medcomfhir.dk/ig/terminology/ValueSet/medcom-HomeCareObservation-messagingActivities'))"


Instance: add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
InstanceOf: MedComHomeCareObservationMessage
Title: "HomeCareObservation message-Spot test and EKG image"
Description: "Example of a HomeCareObservation message-Spot Test and EKG image."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-09-13T12:24:20+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/8dbf63f4-b784-4d40-8802-c1bdb1ecfa63"
* entry[=].resource = 8dbf63f4-b784-4d40-8802-c1bdb1ecfa63
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/870333ac-3134-4ae6-8257-86e0b0537c5f"
* entry[=].resource = 870333ac-3134-4ae6-8257-86e0b0537c5f
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/7fcb76a7-839b-4392-a2ff-f30035faca34"
* entry[=].resource = 7fcb76a7-839b-4392-a2ff-f30035faca34
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/f70ae8b7-c1af-44a2-a21a-570c552dd7cc"
* entry[=].resource = f70ae8b7-c1af-44a2-a21a-570c552dd7cc
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/1b089a05-0a5f-479d-9cbd-921a13470221"
* entry[=].resource = 1b089a05-0a5f-479d-9cbd-921a13470221
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/4a94a70e-6957-47a8-bec7-3e27b3145668"
* entry[=].resource = 4a94a70e-6957-47a8-bec7-3e27b3145668
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/d2b89faa-979a-430d-8887-21ccdf6f238b"
* entry[=].resource = d2b89faa-979a-430d-8887-21ccdf6f238b
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/f84143f7-f586-477f-af56-e50c7d152605"
* entry[=].resource = f84143f7-f586-477f-af56-e50c7d152605
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/b22fcbe0-4977-433e-ad1c-d6545bc8c1cb"
* entry[=].resource = b22fcbe0-4977-433e-ad1c-d6545bc8c1cb
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/1e2351e2-77df-4135-a77b-6a4c39e4a4ca"
* entry[=].resource = 1e2351e2-77df-4135-a77b-6a4c39e4a4ca
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/0e4a5452-1804-42d3-82ed-484df20a09f0"
* entry[=].resource = 0e4a5452-1804-42d3-82ed-484df20a09f0
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/470d39e4-d3f9-4301-82eb-b957ba33475e"
* entry[=].resource = 470d39e4-d3f9-4301-82eb-b957ba33475e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/6ff69f1c-690d-11ed-9022-0242ac120002"
* entry[=].resource = 6ff69f1c-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/b56708c6-2df3-4e4a-a110-2f924b9fc072"
* entry[=].resource = b56708c6-2df3-4e4a-a110-2f924b9fc072
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/42541447-b58c-4a1a-9514-02b80494bbd3"
* entry[=].resource = 42541447-b58c-4a1a-9514-02b80494bbd3
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/ef5cb9a6-835f-4d18-a34e-179c578b9a2a"
* entry[=].resource = ef5cb9a6-835f-4d18-a34e-179c578b9a2a
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Media/cb277ee2-5d96-4762-829d-d36449b2b17f"
* entry[=].resource = cb277ee2-5d96-4762-829d-d36449b2b17f


Instance: faa0c104-0ebf-49cb-bad1-9e0f59436e18
InstanceOf: MedComHomeCareObservationMessage
Title: "HomeCareObservation message-Urine dipsticks and subject refused consent."
Description: "Example of a HomeCareObservation message-Urine dipsticks and subject refused consent."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-09-13T12:24:09+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/e9f4cc68-b1b7-46b2-ba74-7cc39a914bfa"
* entry[=].resource = e9f4cc68-b1b7-46b2-ba74-7cc39a914bfa
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/6d08f000-33cc-41f3-a7c2-c086d53d31a7"
* entry[=].resource = 6d08f000-33cc-41f3-a7c2-c086d53d31a7
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf"
* entry[=].resource = 4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/be9f367d-a84a-4815-90a8-c83a03813fd8"
* entry[=].resource = be9f367d-a84a-4815-90a8-c83a03813fd8
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/72cc3a2c-1dda-4b95-b50a-0f7ac19640f4"
* entry[=].resource = 72cc3a2c-1dda-4b95-b50a-0f7ac19640f4
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/d1c1fa90-2c7e-4dd7-b2e8-e40281635a98"
* entry[=].resource = d1c1fa90-2c7e-4dd7-b2e8-e40281635a98
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/4c845e97-04b2-40e9-ab51-4c5bf080196f"
* entry[=].resource = 4c845e97-04b2-40e9-ab51-4c5bf080196f
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/4b8f899a-df12-4301-8287-9a77d46ded3d"
* entry[=].resource = 4b8f899a-df12-4301-8287-9a77d46ded3d
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/f58819ff-d727-4740-a4ef-44eefc77022e"
* entry[=].resource = f58819ff-d727-4740-a4ef-44eefc77022e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/2fc2c078-825b-491d-9f8e-34926eb4f06f"
* entry[=].resource = 2fc2c078-825b-491d-9f8e-34926eb4f06f




Instance: 401cbc36-db1e-4fe0-bf90-6df331dde179
InstanceOf: MedComHomeCareObservationMessage
Title: "HomeCareObservation with clinical and analysis comment."
Description: "Example of a HomeCareObservation with clinical and analysis comment."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-09-13T12:24:10+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/489de4f2-0d8d-4de2-a7ce-ccb93568799f"
* entry[=].resource = 489de4f2-0d8d-4de2-a7ce-ccb93568799f
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/bbcd4817-1c4b-4089-a712-346f65ec16f9"
* entry[=].resource = bbcd4817-1c4b-4089-a712-346f65ec16f9
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/efb1ed12-6a5d-4342-9572-861071644e46"
* entry[=].resource = efb1ed12-6a5d-4342-9572-861071644e46
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf"
* entry[=].resource = 4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/be9f367d-a84a-4815-90a8-c83a03813fd8"
* entry[=].resource = be9f367d-a84a-4815-90a8-c83a03813fd8
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1"
* entry[=].resource = 1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/a0330c62-fe29-4719-83fa-a94959084f29"
* entry[=].resource = a0330c62-fe29-4719-83fa-a94959084f29
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/008e1c02-605d-458e-8cb8-3eeb16a69aac"
* entry[=].resource = 008e1c02-605d-458e-8cb8-3eeb16a69aac
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/3fd3835d-1758-4d22-8547-000182752817"
* entry[=].resource = 3fd3835d-1758-4d22-8547-000182752817
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1"
* entry[=].resource = ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/8917f29d-269c-4bb3-8ce9-d255c351d52b"
* entry[=].resource = 8917f29d-269c-4bb3-8ce9-d255c351d52b
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/6bf03841-8397-4a2a-9f9a-8966b0cfa571"
* entry[=].resource = 6bf03841-8397-4a2a-9f9a-8966b0cfa571
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/85fd1372-cf02-49c6-bd45-7205f5541a66"
* entry[=].resource = 85fd1372-cf02-49c6-bd45-7205f5541a66
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/f64a0a78-53cf-4a7f-9b89-4a2338a4935c"
* entry[=].resource = f64a0a78-53cf-4a7f-9b89-4a2338a4935c




Instance: 73996cdc-3192-4d15-bd16-c365ef0085e7
InstanceOf: MedComHomeCareObservationMessage
Title: "Modified HomeCareObservation message."
Description: "Example of a Modified HomeCareObservation with clinical and analysis comment."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-09-12T12:34:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/07eb074b-be00-47e5-8bcb-484990a1a97e"
* entry[=].resource = 07eb074b-be00-47e5-8bcb-484990a1a97e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/bbcd4817-1c4b-4089-a712-346f65ec16f9"
* entry[=].resource = bbcd4817-1c4b-4089-a712-346f65ec16f9
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919"
* entry[=].resource = cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf"
* entry[=].resource = 4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/be9f367d-a84a-4815-90a8-c83a03813fd8"
* entry[=].resource = be9f367d-a84a-4815-90a8-c83a03813fd8
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1"
* entry[=].resource = 1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/a0330c62-fe29-4719-83fa-a94959084f29"
* entry[=].resource = a0330c62-fe29-4719-83fa-a94959084f29
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/008e1c02-605d-458e-8cb8-3eeb16a69aac"
* entry[=].resource = 008e1c02-605d-458e-8cb8-3eeb16a69aac
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/8ce47645-4d69-4fa6-a51d-c2bb49d87efb"
* entry[=].resource = 8ce47645-4d69-4fa6-a51d-c2bb49d87efb
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/3fd3835d-1758-4d22-8547-000182752817"
* entry[=].resource = 3fd3835d-1758-4d22-8547-000182752817
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1"
* entry[=].resource = ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/8917f29d-269c-4bb3-8ce9-d255c351d52b"
* entry[=].resource = 8917f29d-269c-4bb3-8ce9-d255c351d52b
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/6bf03841-8397-4a2a-9f9a-8966b0cfa571"
* entry[=].resource = 6bf03841-8397-4a2a-9f9a-8966b0cfa571
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/85fd1372-cf02-49c6-bd45-7205f5541a66"
* entry[=].resource = 85fd1372-cf02-49c6-bd45-7205f5541a66
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/f64a0a78-53cf-4a7f-9b89-4a2338a4935c"
* entry[=].resource = f64a0a78-53cf-4a7f-9b89-4a2338a4935c



Instance: 5f341feb-9a20-463a-96cc-a9ca8ace5567
InstanceOf: MedComHomeCareObservationMessage
Title: "HomeCareObservation message-retracted."
Description: "Example of a retracted HomeCareObservation with clinical and analysis comment."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-09-12T13:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/36cb86f1-a01a-4115-a84d-9390aa0ddcbd"
* entry[=].resource = 36cb86f1-a01a-4115-a84d-9390aa0ddcbd
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/bbcd4817-1c4b-4089-a712-346f65ec16f9"
* entry[=].resource = bbcd4817-1c4b-4089-a712-346f65ec16f9
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/4f013d3a-575c-447d-83e1-7a5fb7f7b0de"
* entry[=].resource = 4f013d3a-575c-447d-83e1-7a5fb7f7b0de
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf"
* entry[=].resource = 4b3b6f0f-a475-4b04-8a92-105e8ce6a7bf
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/be9f367d-a84a-4815-90a8-c83a03813fd8"
* entry[=].resource = be9f367d-a84a-4815-90a8-c83a03813fd8
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1"
* entry[=].resource = 1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/a0330c62-fe29-4719-83fa-a94959084f29"
* entry[=].resource = a0330c62-fe29-4719-83fa-a94959084f29
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/008e1c02-605d-458e-8cb8-3eeb16a69aac"
* entry[=].resource = 008e1c02-605d-458e-8cb8-3eeb16a69aac
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/babb316c-796c-4d10-b97b-45274b5a0c44"
* entry[=].resource = babb316c-796c-4d10-b97b-45274b5a0c44
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/3fd3835d-1758-4d22-8547-000182752817"
* entry[=].resource = 3fd3835d-1758-4d22-8547-000182752817
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1"
* entry[=].resource = ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/8917f29d-269c-4bb3-8ce9-d255c351d52b"
* entry[=].resource = 8917f29d-269c-4bb3-8ce9-d255c351d52b
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/6bf03841-8397-4a2a-9f9a-8966b0cfa571"
* entry[=].resource = 6bf03841-8397-4a2a-9f9a-8966b0cfa571
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/85fd1372-cf02-49c6-bd45-7205f5541a66"
* entry[=].resource = 85fd1372-cf02-49c6-bd45-7205f5541a66
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/f64a0a78-53cf-4a7f-9b89-4a2338a4935c"
* entry[=].resource = f64a0a78-53cf-4a7f-9b89-4a2338a4935c
