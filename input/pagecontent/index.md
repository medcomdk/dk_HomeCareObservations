# Home

## Introduction
This implementation guide (IG) is provided by MedCom to describe the use of FHIR ®© in message based exchange of structured health informations between the municipal acute care team and the general practitioner.  

This IG contains profiles for MedCom HomeCareObservation message (Dansk: Kommunale Prøvesvar). The purpose of the HomeCareObservation message is to send digitised and structured result, from performed obserations by the acute care team to the general prcatitioner. In this way the quality of the observations results can be secure and the general practitioner can easly create an overview of the patients health values and order a right treatment for the patiente. 
The MedCom HomeCareObservation message supports: 
* exchange of the observations that the acute care team had conducted and analyzed
* echachnge of the nursing assessments that are necessary for interpretation and understanding of the measurements and analysis the results

More information about the clinical guidelines for applications can be found here. 

## Standard documentation
The structure of a HomeCareObservation standard is despicted on the following diagram:
<figure>
<img alt="Shows the structure of a HomeCareObservationMessage. The HomeCareObservationMessage includes a MedComHomeCareObservationsMessageHeader and a MedComMessagingProvenance. MedComHomeCareObservationsMessageHeader references a sender and receiver organization, the MedComCoreOrganization and a focus which is a reference to a HomeCare Report. Form the HomeCareRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObservationMessage.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom HomeCareObservation standard </b></figcaption>
</figure>
<br>
<br>

HomeCareObservation follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use. The following sections describe the overall purpose of each profile.


#### MedComHomeCareMessage
The [MedComHomeCareMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html) is constraint of [MedComMessagingMessage](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-message.html). The MedComHomeCareMessage profille is used to bundle the whole HomeCare Observations together. All referenced resources in the HomeCareObservationmessage shalll be contained in the entry list in MedComHomeCareMessage. 

The MedComMessaging require to use the [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html) and to require exactly one [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) resource in the message.

#### MedComHomeCareObservationMessageHeader
The [MedComHomeCareObservationsMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html) constrains the [MedComMessagingMessageHeader](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and constrains the use of carbon-copy destination. 

#### MedComMessagingProvenance
The [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile is used to track information about the activity of the HomeCareObservation message, e.g 'modified-essage' or 'retract-message'. The allowed activity codes for HomeCareObservation message can be found in [MedComHomeCareObservationMessageAcitivityCodes](http://medcomfhir.dk/ig/terminology/ValueSet/medcom-HomeCareObservation-messagingActivities) on the Terminology IG. 

#### MedComMessagingOrgzanizationRequester 
The [MedComMessagningOrganizationRequester]( http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-MedComMessagingOrganizationRequester.html) profile is used to express the receiver information of the HomeCareRepport. 
The receiver informations consist of inital of the general practitioner that requested the observation, if known, and information about the general practitioners medical practice. The genral practice shall be identified using a SOR-, EAN and Ydrenummer-identifier.
If the initials of the general practitioner are unknown, then the code "unknown" form data- absent reson valuset need to be sent. 

#### MedComHomeCareReport
The [MedComHomeCareReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-MedComHomeCareReport.html) profile contains the main content of the HomeCareObservation standard. It based on the Diagnostic report resource. The HomeCareReport shall include results form the perforemd observations by the municipal acute care team. The profile also includes information about the performer of the observations and the repport. Further, it is possible to add Clinical relevant comment regarding the whole repport. [Click here for more information about the coment](C:\Git_hub\dk_MunicipalityObservationResults\input\pagecontent\StructureDefinition-MedComHomeCareReport-intro.md)

#### MedComHomeCareObservation
The [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html) profile is based on the Observation resource. THis profile describes the observationresults that the municipal acute care team performs. The observation results shall contain a code, either a NUP or MCS code describing the observation. Further, a deat and time that defines when the observation was performed shall be added. 


#### MedComCorePatient
The [MedComCorePatient](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a MedComHomeCareObservations message. However, a MedComHomeCareObservations message may only be exchanged for patients with an official Danish civil person register (CPR)-number

#### MedComCoreOrganization 
The [MedComCoreOrganization](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html) profile is used in a MedComHomeCareObservations message to describe the sender and receiver organization of the HomeCareRepport.

#### MedComCoreObservationProducerOrganization
The [MedComCoreObservationProducerOrganization](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-core-observationproducerorg) profile is used in a MedComHomeCareObservation message to represents the organization that is responsible for the observation execution. The MedComCoreObservationProducerOrganization shall be identified using SOR- and EAN-identifier, and a producer-ID. The producer-id consist of a three letter code and a municipal code. The municipal code can be found in valuset exibitetd on Dk terminology IG, <a href ="http://hl7.dk/fhir/core/ValueSet-dk-core-MunicipalityCodes.html">that can be found here.</a>

The three letter code is exibitted by MedCom and is an abbreviation for the organization that is responsible for the observations results. The municipal acute care team  is responsible for performig the observations and for genereting the observations results in the HomecareObservation standard. Therefore the Code for the municiapl acute careteam is "KAT". 
The three letter code is exibited in code system on the terminology IG. <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem-MedComProducentID.html">Click here too se th code system. </a>

#### Timestamps
A HomeCareReport standard includes several timestamps. These timestamps are present in the profiles [MedComHomeCareRepport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-MedComHomeCareReport.html), [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html),[MedComHomeCareObservationMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html), and [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) and have different purposes:
* Issued represents the dateTime the version of the report was made. 
* Effective.dateTime represents the time when the observation was performed.
* Effecive.period represents the time-period for observation.
* Bundle.timestamp represents the time bundle is generated.
* Provenance.occuredDateTime[x] represents the time the HomeCareObservation is sent, in a human-readable time
* Provenance.recorded represents the time the HomeCareObservation  is sent, in a machine-readable time

It is assumed that in most cases, the Bundle.timestamp, provenance.occuredDateTime[x] and provenance.recoreded will be equal,as the events happens instantly after eachother. However, there might be systems where the sending is delayed compared to the real world-event and bundle generation, hence will the Provenance timestamps differentiate from Bundle timestamp.

#### Modification and Cancellation of the HomeCareObservationReportMessage
It is allowed to modify and cancel a HomeCareObservationReportMessage. if the message is modified or canceled it shall be clearly indicated on the user interface. When sending af modification or cancellation of the HomeCAreObservationReport the MessageHeader.id sholud be the same so the receiver system can see if there are som changes or if the message has been canceled. 

##### Modify HomeCareObservationReportMessage
It is a requirement that the sender of HomeCareObservationReportMessage can modify an already sent HomeCareObservationReportMessage if the user wans to correct the content.
The modification can only happend if the modifications are regarding effective.dateTime, observation result, a clinical comment, an observation comment, content of an attached file (as long as the content is sent to the correct civil registration number (Danish: CPR-nummer)), the initials of the reqesting general practitioner or sender's signature. 

The receiver system shall be able to receive and show modification of an already received HomeCareObservationReportMessage. It is also required that the receiver system claryfy shows what was modified in the received correction, in the user interface of the receiver system. Further, there shall be traceability to previour received HomeCareObservationReportMessage in the receiver system. 

##### Cancel HomeCareObservationReportMessage
The sender of the HomeCareObservationReportMessage shall be able to cancel the already send HomeCareObservationReportMessage if the message if the subject in the messagt is wrong, wrong receiver og the message and if the content of an attachement is sent on the wrong subject. 
If the user wants to cancel the message, then the reason of cancellation shall be written in the clinical comment. Alternatively the user can also add a MedCom's predefined cancellation reason phrases that should be added to the clinical comment. <a href="https://medcomfhir.dk/ig/terminology/CodeSystem-medcom-messaging-cancellation-reason.html">Click here to read the MedCom's predefined cancellation reason phrases</a>. 

The receiver system shall be able to receive a cancellation of the already received HomeCareObservationReportMessage and show clearly that the massage has been canceled in the user interface. The cancelled HomeCareObservationReportMessage should not be deleted for reasons of subsequent traceability, but should instead be archived and clearly marked as cancelled.



#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to the [MedCom Core IG](http://medcomfhir.dk/ig/core/), [MedCom Messaging IG](http://medcomfhir.dk/ig/messaging/) and [DK-core v. 2.0.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). These dependencies are currently reflected in MedComHomeCareMessage, and MedComHomeMessageHeader which both inherits from profiles defined MedComMessaging IG. Further, it is reflected in references to MedComCorePatient, MedComCoreEncounter, MedComCoreOrganization and MedComMessagingOrganization.

## Download 
Content in this IG can be downloaded in npm format under [Download](https://medcomfhir.dk/ig/MedComHomeCareObservations/downloads.html). This can be used to validate locale FHIR profiles against.

## Documentation
On the [introduction page for HomeCareObservations](https://medcomdk.github.io/dk-medcom-homecareobservations/) the following documentation can be found: 
* Clinical guidelines
* Use cases 


## Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

## Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).



