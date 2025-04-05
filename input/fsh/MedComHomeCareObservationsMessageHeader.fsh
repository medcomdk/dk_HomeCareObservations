Profile: MedComHomeCareObservationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-homecareobservation-MessageHeader
Title: "MedComHomeCareObservationMessageHeader"
Description: "MessageHeader for HomeCareObservation"
* id ^short = "A unique identifier for each message. This identifier should be globally unique."
* eventCoding = $MessageEvents#homecareobservation-message
* destination[cc] ..0 
* destination[primary].receiver only Reference(MedComRequesterOrganization)
* destination[primary].receiver ^type.aggregation = #bundled
* sender only Reference(MedComProducerOrganization)
* focus only Reference(MedComHomeCareDiagnosticReport)

Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding.code = $Use#primary


// HomeCareReport new example- Spot
Instance: 8dbf63f4-b784-4d40-8802-c1bdb1ecfa63
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Instance of a MessageHeader resource used in a new Homecare Observation message."
Description: "Example of a MessageHeader in a new HomeCareDiagnosticReport message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=52581000016005"
* destination[primary].receiver = Reference(42541447-b58c-4a1a-9514-02b80494bbd3)
* sender = Reference(ef5cb9a6-835f-4d18-a34e-179c578b9a2a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1144561000016002"
* focus = Reference(870333ac-3134-4ae6-8257-86e0b0537c5f)


// HomeCareReport new example- urin stick
Instance: e9f4cc68-b1b7-46b2-ba74-7cc39a914bfa
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message."
Description: "Example of a MessageHeader in a new HomeCareDiagnosticReport message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=52581000016005"
* destination[primary].receiver = Reference(d1c1fa90-2c7e-4dd7-b2e8-e40281635a98)
* sender = Reference(72cc3a2c-1dda-4b95-b50a-0f7ac19640f4)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1144561000016002"
* focus = Reference(6d08f000-33cc-41f3-a7c2-c086d53d31a7)

// HomeCareReport new example-tobs
Instance: 489de4f2-0d8d-4de2-a7ce-ccb93568799f
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message."
Description: "Example of a MessageHeader in a new HomeCareDiagnosticReport message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=52581000016005"
* destination[primary].receiver = Reference(1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1)
* sender = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1144561000016002"
* focus = Reference(efb1ed12-6a5d-4342-9572-861071644e46)

// HomeCareReport  modify example
Instance: 07eb074b-be00-47e5-8bcb-484990a1a97e
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Instance of a MessageHeader resource used in a modified message message."
Description: "Example of a MessageHeader in a modified HomeCareDiagnosticReport message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=52581000016005"
* destination[primary].receiver = Reference(1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1)
* sender = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1144561000016002"
* focus = Reference(cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919)


// HomeCareReport  Cancelled example
Instance: 36cb86f1-a01a-4115-a84d-9390aa0ddcbd
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Instance of a MessageHeader resource used in a cancelled message."
Description: "Example of a MessageHeader in a cancelled HomeCareDiagnosticReport message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=52581000016005"
* destination[primary].receiver = Reference(1ab9c2d9-c348-4d75-9122-60ea8a6fdcf1)
* sender = Reference(a0330c62-fe29-4719-83fa-a94959084f29)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1144561000016002"
* focus[0] = Reference(cfa9e95b-b5ac-4cfe-abe7-ea29e6b67919)
* focus[1] = Reference(4f013d3a-575c-447d-83e1-7a5fb7f7b0de)