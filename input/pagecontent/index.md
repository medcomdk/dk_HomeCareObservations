> This IG is developed to be part of a production trial of the communication between the general practitioner and municipal acute care team.

# Home
## Introduction
This implementation guide (IG) is provided by MedCom to describe the use of FHIR ®© in message based exchange of structured health data between the municipal acute care team and the general practitioner.  

This IG contains profiles for MedCom HomeCareObservation (Danish: Kommunale Prøvesvar).The purpose of the HomeCareObservation is to support digital structured communication of results and observations performed and produced by the municipal acute care team.The HomeCareObservation will be sent from the municipal acute care team to the general practitioner on the condition that the general practitioner previously has requisitioned the acute care team to perform an emergency visit. With HomeCareObservation the quality of the results and observations (hereafter mentioned as observations results) are increased as structured data concerning sender, producer of the results, analysis codes and clinical observations, among others, are part of the HomeCareObservation. This allows the general practitioner to easily create an overview of the citizens health data.

The MedCom HomeCareObservation supports following content in relation to healthcare:
* exchange of observation results that the municipal acute care team has performed, analyzed and produced
* exchange of clinical observations (nursing assessments) that are necessary in order to understand and interpret the citizens overall results and health status 
* exchange of analysis comments that are necessary in order to understand and interpret individual analysis and results
* exchange of relevant files (e.g. images or PDF)


[More information about the clinical guidelines for applications can be found here.](https://medcomdk.github.io/dk_HomeCareObservations/#11-clinical-guidelines-and-documentation) 

## MedCom HomeCareObservation
The structure of a MedComHomeCareObservation is despicted on the following diagram:
<figure>
<img alt="Shows the structure of a HomeCareObservationMessage. The HomeCareObservationMessage includes a MedComHomeCareObservationsMessageHeader and a MedComMessagingProvenance. MedComHomeCareObservationsMessageHeader references a sender and receiver organization, the MedComCoreOrganization and a focus which is a reference to a HomeCare Report. Form the HomeCareRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObservationMessage.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom HomeCareObservation. </b></figcaption>
</figure>
<br>
<br>

MedCom HomeCareObservation follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use. The following sections describe the overall purpose of each profile.


### MedComHomeCareObservationMessage
The MedComHomeCareObservationMessage profile is used to bundle all observations and relevant information together. All referenced resources in the HomeCareObservationMessage shall be contained in the entry list in MedComHomeCareObservationMessage. 

The [MedComHomeCareObservationMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-message.html) is a constraint of the [MedComMessagingMessage](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-message.html) further to use the [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-messageheader.html) and to require exactly one [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html).
Furthermore, it contains rules that constrains the ValueSet of activities in the <a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html">MedComMessagingProvenance</a> profile to only contain activities from the [MedComHomeCareObservationMessageAcitivityCodes](http://medcomfhir.dk/ig/terminology/ValueSet-medcom-HomeCareObservation-messagingActivities.html) ValueSet, which contains activities such as new-message, forward-message, and other activities triggering the message.


### MedComHomeCareObservationMessageHeader
The [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html) constrains the [MedComMessagingMessageHeader](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and constrains the use of carbon-copy destination. 

### MedComHomeCareDiagnosticReport
The [MedComHomeCareDiagnosticReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-diagnosticreport.html) profile contains the main content of the HomeCareObservation message. It is inherited from the profile [MedComCoreDiagnosticReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-core-diagnosticreport.html). The MedComHomeCareDiagnosticReport shall include observation results performed and produced by the municipalties acute care team. Futher shall the MedComHomeCareDiagnostiscRepport include an information about the status of the observation results.  
The profile also includes information about the performer, i.e the person who performed and produced observations results. The perfomer informations consist of a signature that requires the name, title and relevant telephone number.Further, this profile also contains the clinical observations (nursing assessments) regarding the citizens overall results and health status.
[Click here for read more information about the clinical observations.](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-diagnosticreport.html)

This profile also allows to send relevant attachments from the acute home care visit.  Attachment that are allowed to sendt with the HomeCareDiagnosticReport are: pdf, jpeg, png, tiff or gif.

### MedComHomeCareObservation
The [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html) profile inherits from the MedComCoreObservation profile. This profile includes infromation about what observation was performed, what date & time, by whom, and what result was obtained.
Too expres what observation was performed a Observation.code.coding elemen shall be used. In HomeCareObservation it is allowed to ude NPU codes for observations and MedCom (MCS) codes for  observations. 
[Click here to see the ValueSet for NPU codes.](https://medcomfhir.dk/ig/terminology/ValueSet-NPUObservationCodesValueSet.html)

[Click here to see the ValueSet for MCS codes.](https://medcomfhir.dk/ig/terminology/ValueSet-MedComObservationValueSet.html)


It is alsao allowed to send an analysis comment on the individual result, if this comment is relevant to include. 
Further it is required to send information that the result of the observation is not reference assessed (Dansk: ikke reference vurderet).

### MedComCorePatient
The [MedComCorePatient](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a MedComHomeCareObservations message to represent the patient. 


### MedComMessagingProvenance
The [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile is used to track information about the activity of the HomeCareObservation message, e.g 'new-message' or 'modify-message'. The allowed activity codes for HomeCareObservation message can be found in [MedComHomeCareObservationMessageAcitivityCodes](http://medcomfhir.dk/ig/terminology/ValueSet-medcom-HomeCareObservation-messagingActivities.html) on the Terminology IG. 

### MedComMessagingOrganization 
The [MedComMessagingOrganization ](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html) profile is used in the MedComHomeCareObservationMessageHeader profile to describe the sender organization of the HomeCareDiagnosticReport. The sender organization can be the municipality to which the acute ceare team belongs. 

### MedComRequesterOrganization 
The [MedComRequesterOrganization]( http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-requesterorganization.html) represents the receiver of the HomeCareObservation message. The receiver information consist of the initials of the general practitioner that requisitioned acute homecare visit and observation, if known, and identifiers such as SOR-, EAN and Ydernummer-identifier to represent the general practitioner.
If the initials of the general practitioner are unknown, then the code "unknown" form the [data-absent-reason ValueSet](http://hl7.org/fhir/R4/valueset-data-absent-reason.html) shall be sent.  In MedComRequesterOrganization the contact.name.given shall be used to express the initials of the general practitioner. The standard follows HL7 rulse to expres initals. [Click here to read the rules](http://hl7.org/fhir/R4/datatypes.html#HumanName)


### MedComProducerOrganization
The [MedComProducerOrganization](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-producer-organization.html) profile is used in a HomeCareObservation message to represent the organization that is responsible for performing and analysing, thereby producing, the observation results e.g. acute careteam. The MedComProducerOrganization shall be identified using municipality SOR-ID, and a producer-ID.  The producer-ID consists of a <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem-MedComProducentID.html">three letter code, which is displayed on the terminology IG</a>. In a receiver system, the interpretation of the two codes will together state that an acute care team from e.g. Aarhus municipality is the producer of the results.

### MedComCoreMedia
The [MedComCoreMedia](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-media.html) profile is used in HomeCareObservation message to represents the relevant attachements added to the HomeCareDagnosticReport. MedComCoreMedia is referred from HomCareDiagnosticReport.media.link. 

If the attached file are send, it is a requirement that the ID and title of the attached file shall be sent. Furthermore, MedCom recommended that the name of the author, as well as the time of creation, of the attached file can be signed and sent with it.

## Timestamps
The HomeCareObservation message includes several timestamps. These timestamps are present in the profiles [MedComHomeCareDiagnosticReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-diagnosticreport.html), [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html),[MedComHomeCareObservationMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html), and [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) and have different purposes:
* Observation sampling date and time (Danish: Prøvetagningsdato og tidspunkt)
    * HomeCareObservation.effective.dateTime represents the date and time when the sample was performed and produced.
* DiagnosticReport generation date and time (Danish: Genereringsdato og tidspunkt)
    * HomeCareDiagnosticReport.issued represents the dateTime the version of the report was made. 
* Sending date and time (Danish: Afsendelsesdato og tidspunkt)
    * Bundle.timestamp represents the time Bundle is generated.
    * Provenance.occuredDateTime[x] represents the time the HomeCareObservation message is sent, in a human-readable time
    * Provenance.recorded represents the time the HomeCareObservation  is sent, in a machine-readable time

It is assumed that in most cases, the Bundle.timestamp, provenance.occuredDateTime[x] and provenance.recorded will be equal,as the events happens instantly after eachother. However, there might be systems where the sending is delayed compared to the real world-event and bundle generation, hence will the Provenance timestamps differentiate from Bundle timestamp.


## Modification and Cancellation of the HomeCareObservationMessage
It is allowed to modify and cancel a HomeCareObservation Message. If the message is modified or cancelled it shall be clearly indicated on the user interface. When sending a modification or cancellation of the HomeCareObservation the MessageHeader.id should be the same so the receiver system can see if there are some changes or if the message has been cancelled. 

### Modify HomeCareObservation Message
It is a requirement that the sender of HomeCareObservation message can modify an already sent HomeCareObservation message if the user wants to correct the content.
The modification can only happen if the modification is regarding observation sampling date and time, observation result, a clinical comment (overall nursing assessment), an analysis comment, content of an attached file (as long as the content is send on the correct civil registration number (Danish: CPR-nummer)), the initials of the requisitioning general practitioner or sender's signature. 
When sending a modification it is requirede to have a Provenance instance referencing the message being modified, and a Provenance instance referencing the modification message, where Provenance.entity.what.reference element points to the MessageHeader.id of the previous message.the It is also required that the Provenance instance referencing the modification message, have a Provenance.entity.role that shall be *revision* and the Provenance.activity shall be *modify-message*. 

The receiver system shall be able to receive and show modification of an already received HomeCareObservation message. It is also required that the receiver system clearly shows what was modified in the received correction, in the user interface of the receiver system. Further, there shall be traceability to previously received HomeCareObservation message in the receiver system.  


### Cancel HomeCareObservation Messsage
The sender of the HomeCareObservation Message shall be able to cancel the already sent HomeCareObservation Message if the message has been sent on an incorrect civil registration number, if the receiver is incorrect or if the content in an attachment is concerning an incorrect civic registration number. If the sender cancel the already sent HomeCareObservation Message then the cancellation applies to whole message and not only to the wrong observation result. 
If the user wants to cancel the message, then the reason of cancellation shall be written in the clinical comment. Alternatively, the user can also add one of MedCom's predefined cancellation reason phrases that should be added to the clinical comment. 
<a href="https://medcomfhir.dk/ig/terminology/CodeSystem-medcom-messaging-cancellation-reason.html">Click here to read MedCom's predefined phrases.</a>. The cancellation reason shall be added to the DiagnosticRepport.conclusion element. 

There shall be a Provenance instance referencing to the message being cancelled, and a Provenance instance referencing the cancellation message, where Provenance.entity.what.reference element points to the message being cancelled.
In the latter instance of the Provenance resource, the Provenance.entity.role shall be *removal* and the Provenance.activity shall be *retract-message*. 

The receiver system shall be able to receive a cancellation of an already received HomeCareObservation Message and show clearly that the message has been cancelled in the user interface. The cancelled HomeCareObservation Message should not be deleted for reasons of subsequent traceability, but should instead be archived and clearly marked as cancelled.

## Simplified examples of the HomeCareObservation Message

### HomeCareObservation Message-Spot test and EKG image
Below can a simplified example of a new HomeCareObservation Message be seen. This HomeCareObservation meessage contains results form performed spot test and  an attachment containg performed EKG. Since the example is a new message is the activity in the Provenance instance 'new-message'.

[Click here to see the generated example of HomeCareObservation containing results from Spot test and EKG image](./Bundle-add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c.html)


### HomeCareObservation Message-Urinestix and refused consent
Below can a simplified example of a new HomeCareObservation Message be seen. This HomeCareObservation meessage contains urinestix results and refused consent to exchange the results. Since the example is a new message is the activity in the Provenance instance 'new-message'.
[Click here to see the generated example of HomeCareObservation caontaing result from Urinestix and refusec consent](./Bundle-faa0c104-0ebf-49cb-bad1-9e0f59436e18.html)


### HomeCareObservation Message-TOBS with clinical and analysis comment
Below can a simplified example of a new HomeCareObservation Message be seen. This HomeCareObservation meessage contains TOBS results and clinical and analysis comment. Since the example is a new message is the activity in the Provenance instance 'new-message'.
[Click here to see the generated example of HomeCareObservation containg TOBS result and clinical and analysis comment](./Bundle-401cbc36-db1e-4fe0-bf90-6df331dde179.html)



### Modify HomeCareObservation Message
Below can a simplified example of a modified HomeCareObservation Message be seen. This HomeCareObservation meessage is a modification of HomeCareObservation message containing TOBS results and clinical and analysis commet. Since the example is a modification message the activity in the provenacne instance shall be 'modified-message'.
[Click here to see the generated example of simplified example of modify HomeCareObservation Message](./Bundle-73996cdc-3192-4d15-bd16-c365ef0085e7.html)



### Cancel HomeCareObservation Messsage
Below can a simplified example of a modified HomeCareObservation Message be seen. This HomeCareObservation meessage is a cancellation of HomeCareObservation message containing TOBS results and clinical and analysis commet. 
Since it is a cancellation messag there shall be two provenance instances; one provenance instance for the message that was sent frist and one for the message that cancels the first one. 
[Click here to see the generated example of simplified example of cancelled HomeCareObservation Message](./Bundle-5f341feb-9a20-463a-96cc-a9ca8ace5567.html)


## Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

## Dependencies
This IG has a dependency to the [MedCom Core IG](http://medcomfhir.dk/ig/core/), [MedCom Messaging IG](http://medcomfhir.dk/ig/messaging/), [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) and [DK-core v. 2.0.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). These dependencies are currently reflected in MedComHomeCareMessage, and MedComHomeMessageHeader which both inherits from profiles defined MedComMessaging IG. Further, it is reflected in references to MedComCorePatient, MedComCoreEncounter, MedComCoreOrganization and MedComMessagingOrganization.

## Download 
Content in this IG can be downloaded in npm format under [Download](https://medcomfhir.dk/ig/homecareobservation/downloads.html). This can be used to validate locale FHIR profiles against.

## Documentation
On the [introduction page for HomeCareObservations](https://medcomdk.github.io/dk_HomeCareObservations/) the following documentation can be found: 
* Clinical guidelines
* Use cases 


## Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

## Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).



#### Tilgængelighedserklæring

[tilgængelighedserklæring](https://www.was.digst.dk/medcomfhir-dk-ig-)