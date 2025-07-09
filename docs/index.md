<!-- HomePage -->
# MedCom HomeCareObservation
<!-- below is the table of content. Ensure to update it. -->
**Table of Content**
* [1 Standard Documentation](#standard)
  * [1.1 Clinical Guidelines and documentation](#11-clinical-guidelines-and-documentation)
  * [1.2 Use Cases](#12-use-cases)
  * [1.3 Technical Specification](#13-technical-specification)
* [2 Test and certification](#2-test-and-certification)

> Note: This Standard is developed to be part of a production trial of the communication between the general practitioner and municipal acute care team.

This page presents MedCom HomeCareObservation (Danish: Kommunale Prøvesvar) standard. The purpose of the standard is to support digital structured communication of results and observations performed and produced by the municipal acute care team.The HomeCareObservation will be sent from the municipal acute care team to the general practitioner on the condition that the general practitioner previously has requisitioned the acute care team to perform an emergency visit. With HomeCareObservation the quality of the results and observations (hereafter mentioned as observations results) are increased as structured data concerning sender, producer of the results, analysis codes and clinical observations, among others, are part of the HomeCareObservation. This allows the general practitioner to easily create an overview of the citizens health data.
 
> Clinical Guidelines and documentation and use cases are in Danish. The remaining documentation will be in English.

## 1 Standard Documentation {#standard}
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the MedCom HomeCareObservation message, what to implement and how to get a MedCom certification. The standard documentation for MedCom HomeCareObservation includes:
  * Clinical Guidelines and documentation
  * Use cases
<p>&nbsp;</p>

### 1.1 Clinical Guidelines and documentation 
The Clinical Guidelines and documentation is the foundation for the MedCom HomeCareObservation standard. It describes the clinical needs for the modernization, the requirement for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for MedCom HomeCareObservation. It is important for both implementers and business specialists to understand the Clinical Guidelines and documentation to ensure that the implemented standard supports the requirements.

Below can the Clinical Guidelines and documentation in Danish be found:

[Danish: Sundhedsfaglige dokumentation (pdf)](assets/documents/Kommunale_prøvesvar_Sundhedsfaglig_dokumentation_v1.0.1.pdf) <br> 

### 1.2 Use Cases

Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the MedCom HomeCareObservation. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.
[Danish: Use cases (pdf)](assets/documents/Kommunale_prøvesvar_Use_cases_v1.0.0.pdf) <br> 


### 1.3 Technical specification

The technical specification for MedCom HomeCareObservation standard is composed by profiles form MedComHomeCareObservation IG: 

The profiles that are part of the technical specification for MedCom HomeCareObservation are: 
 * [MedComCoreDiagnosticReport](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-diagnosticreport.html)
 * [MedComCoreObservation](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-observation.html)
 * [MedComProducerOrganization](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-producer-organization.html)
 * [MedComHomeCareDiagnosticReport](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-diagnosticreport.html)
 * [MedComHomeCareObservation](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html)
 * [MedComHomeCareObservationMessage](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html)
 * [MedComHomeCareObservationMessageHeader](http://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html)
 * [MedComRequesterOrganization](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-requesterorganization.html)
 * [MedComCoreMedia](http://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-media.html)
The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further, the structure of the standard is described and supported with examples in different degree of technical skills.

[Click here to read an introduction to the technical specificationscan be found here.](assets/documents/Intro-Technical-Spec-ENG.md) 



## 2 Test and certification 

Certification of a system implies both an approved test protocol and run-through of TouchStone test scripts when testing send of messages. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. Test protocols can be found below.
<br>

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification">Click here to find the description of test and certification of FHIR standards in MedCom. </a> 
<br>

**Sending a HomeCareObservation message**
* [Test protocol in English (docx)](assets/documents/HomeCareObservation_Testprotocol_Send.docx) 

<p>&nbsp;</p>

**Receiving a HomeCareObservation message**
* [Test protocol in English (docx)](assets/documents/HomeCareObservation_Testprotocol_Receive.docx) 

<p>&nbsp;</p>