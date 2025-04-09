
### Scope and usage 
The MedComHomeCareObservationDiagnosticReport profile contains references to all observation results performed and produced by the municipal acute care team, with the purpose of sending the HomeCareObservation to citizens genereal practitioner. The MedComHomeCareObservationDiagnosticReport is sent as a HomeCareObservation message. 

<figure>
<img alt="Form the HomeCareDiagnosticRepport is a MedComCorePatient and HomeCareObservation and a MedComObservationProducerOrganization. " src="./HomeCareObservation/HomeCareObsProfile.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedComHomeCareObservationDiagnosticReport profile </b></figcaption>
</figure>
<br>
<br>

#### Status 
In a DiagnosticRepport resource, it is required to specify the status of the repport. When all results from performeded observations by the acute care team are typed ind then the HomeCareDiagnosticRepport.status shall be #final.


#### Comments 
In the MedComHomeCareDiagnosticReport it is possible to send comments regarding the performed and produced observation results by the municipal acute care team. There are two types of comments that can be send; analysis comments about individual analysis and results, and a clinical comment (overall nursing assessment) about the entire report.

##### Analysis comment about an individual observation
Analysis comment (Danish: Analysekommentar) is a comment that the user can choose to add, if relevant, to an individual observation result. The element Observation.note in HomeCareObservation profile shall be used when adding a analysis comment about the observation. The analysis comment shall not exceed 1 MB (1024 x 1024 characters) in size.

##### Clinical comment (overall nursing assessment)
The clinical comment (Danish: Klinisk kommentar) is a comment to the etntire report. This comment shall contain information that is necessary to provide an overall assessment of the citizen in the acute situation. It is recommended that the municipal acute careteam send the relevant clinical observations (nursing assessment) that are necessary in order to understand and interpret the citizens overall results and health status. When adding a clinical comment the element DiagnosticReport.conclusion shall be used. The clinical comment shall not exceed 1 MB (1024 x 1024 characters) in size. 

#### Performer 
In the MedComHomeCareDiagnosticReport it is required to describe the performer of the MedComHomeCareDiagnosticReport. The performer is organization that is responsible for creating the HomeCareDiagnosticRepport e.g acute care team . The performer shall be described using a signature and a producer-ID.

##### Signature
It is required to send the siganure of the MedComHomeCareDiagnosticReport performer. The signature consist of: 
* Name: of the person responsible for producing the report. The name shall be described using a [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html).
* Author role: The role (Danish: stillingsbetegnelse) of the person producing the report  shall be described using a [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) 
* Telephone nummer: Relevant telephone number e.g. to the department or organization where the person who is reposnible for the report works. 

##### Producer-ID
The producer-ID consist of a three letter code and a SOR-ID for the municiplity where the acute care team is owned by. 
The three letter code is exhibited by MedCom and is an abbreviation for the producer (e.g. unit or organization) that is responsible for the observations results. The municipal acute care team  is responsible for performig and producing the observations results in the MedCom HomeCareObservation. Therefore the code for the municiapl acute careteam is "KAF". 
The three letter code is exibited in code system on the terminology IG. <a href= "http://medcomfhir.dk/ig/terminology/CodeSystem-MedComProducentID.html">Click here to see the code system. </a>

#### Use of security labet on patient consent 
If a patient not allow to share the observation results with other than the general practitioner a securety labe shall be used. 
This mean that the meta.security.code shall be R, and in the user interface, it shall be clearly stated that consent has been refused. 

#### Attachements 
In MedComHomeCareDiagnosticReport it is allowed to include attachments. When including an attachment to a HomeCareDiagnosticReport then the element DiagnosticReport.media.link shall be used. The DiagnosticReport.media.link reference to MedComCoreMedia resource where the atachment shall be added. 
It is up to the user to assess when it is relevant to send an attachment. 
Only an attachment of the permitted formats must be included. 
[Click here to see the permitted formats of an attachment](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-attachmentMimeTypes.html)

<!-- Only an attachment of the following formats must be included: 

* Adobe Portable Document Format (PDF)
* Graphics Interchange Format (gif)
* JPEG Image
* Portable Network Graphics (PNG)
* Tag Image File Format (tiff) -->

The attached file shall be base64ed and added to MedComCoreMedia.content.data element.
If the attached file are sent, it is a requirement that the ID and title of the attached file shall be sent.
The ID of the attachment shall be expressed using Media.identifier element.
The Media.content.titel element shall be used to express the titel of the attachment. 

Furthermore, MedCom recommended that the name of the author, as well as the time of creation, of the attached file be signed and sent with it.
To express the author of the attachemn the Media.operator shal be used.
The time of creation, of the attached file shall be expressed using Media.content.creation element  