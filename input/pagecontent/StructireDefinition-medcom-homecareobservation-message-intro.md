## Scope and usage
This profile is the root profile of MedCom HomeCareObservation Message. This profile is inherited from the MedComMessagingMessage. 
This profile bundles: 
* MedComHomeCareObservation
* MedComHomeCareObservationDiagnosticReport
* MedComHomeCareObservationMessageHeader
* MedComMedia 
* MedComProducerOrganization
* MedComRequesterOrganization
* MedComCorePatient
* MedComCorePractitioner

The Bundle containing the MedComHomeCareObservation message is selfcontained, why it shall contain one instance of the MedComHomeCareObservationMessageHeader. 
HomeCareObservation Message follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use.