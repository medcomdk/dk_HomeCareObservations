# Introduction to the Technical Content
[Return](../../index.md)

**Table of contents**
* [1 Profiles in the HomeCareObservation Standard](#1-profiles-in-the-homecareobservation-standard)
* [2 Internal Referneces in a HomeCareObservation ](#2-internal-referneces-in-a-homecareobservation)


## 1 Profiles in the HomeCareObservation Standard
In total, eleven profiles from <a href="https://medcomfhir.dk/ig/core/" target="_blank">MedCom Core IG</a>, <a href="https://medcomfhir.dk/ig/messaging/" target="_blank">MedCom Messaging IG</a> and <a href="https://medcomfhir.dk/ig/homecareobservation/" target="_blank">MedCom HomeCareObservation IG</a> constitute the HomeCareObservation standard. A short description of each profile can be seen in the <a href="#tab1">Table 1<a>.


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lc33{background-color:#2c415c;border-color:inherit;color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg" id="tab1">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in HomeCareObservation standard </caption>
<thead>
  <tr>
    <th class="tg-lc33">Profile</th>
    <th class="tg-lc33">Ressource</th>
    <th class="tg-lc33">Description</th>
    <th class="tg-lc33">MustSupport elements</th>
    <th class="tg-lc33">Implementation Guide Origin </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-message.html" target="_blank">MedComHomeCareObservationMessage</a></td>
    <td class="tg-0pky">Bundle</td>
    <td class="tg-0pky">Acts as a container for the<br>content of the message. Inherited from the MedComMessagingMessage</td>
    <td class="tg-0pky">ID                                      <br>Type                                         <br>Timestamp                       <br>Entry</td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecareobservation-MessageHeader.html" target="_blank">MedComHomeCareObservationMessageHeader</a></td>
    <td class="tg-0pky">MessageHeader</td>
    <td class="tg-0pky">The header of a MedComHomeCare<br>message which must always be the first referenced profile, when the type of<br>the bundle is 'message'. This profile holds references to the fundamental<br>information in a message, such as sender, receiver, and the content of the<br>message in terms of HomeCareDiagnosticReport porfile. This profile is<br>inherited form the MedComMessagingMessageHeader</td>
    <td class="tg-0pky">Id<br><br>Text<br><br>Event[x]:eventCoding<br><br>Destination:primary<br><br>Destination:primary.use<br><br>Destination:primary.endpoint<br><br>Destination:primary.receiver<br><br>Sender<br><br>Source<br><br>Source.endpoint<br><br>Focus</td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-diagnosticreport.html" target="_blank">MedComCoreDiagnosticReport</a></td>
    <td class="tg-0pky">DiagnosticReport</td>
    <td class="tg-0pky">Contains central information<br>about a DiagnosticReport containg all observation</td>
    <td class="tg-0pky">Status                                          <br>Code                                    <br>Subject                                                  <br>Issued                                 <br>Meta.Security          <br>Performer                           <br>Result                                   Media                                <br>Media.Link                     <br>Conclusion</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-observation.html" target="_blank">MedComCoreObservation</a></td>
    <td class="tg-0pky">Observation</td>
    <td class="tg-0pky">Contains central informaion about<br>an observation </td>
    <td class="tg-0pky">Status                                          <br>Code                                                          <br>Code.coding.system                             <br>Code.coding.code                                  <br>Subject                                                  <br>EffectiveDateTime                        <br>Value                               <br>Note                            </td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homecare-diagnosticreport.html" target="_blank">MedComHomeCareDiagnosticReport</a></td>
    <td class="tg-0pky">DiagnosticReport</td>
    <td class="tg-0pky">Contains information to all<br>observation results performed and produced by the municipal acute care team</td>
    <td class="tg-0pky">Status                                          <br>Code                                    <br>Subject                                                  <br>Issued                                 <br>Meta.Security          <br>Performer.ProducerOrganization       <br>Performer.practitionerRole                                    <br>Result                                   Media                                 Media.Link                      Conclusion</td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/homecareobservation/StructureDefinition-medcom-homeCare-observation.html" target="_blank">MedComHomeCareObservation</a></td>
    <td class="tg-0pky">Observation</td>
    <td class="tg-0pky">Describes a  observation performed by municipal acute<br>care team </td>
    <td class="tg-0pky">Status                                          <br>Code                                                          <br>Code.coding.system                             <br>Code.coding.code                <br>Code.coding.display                                 Subject                                                  <br>EffectiveDateTime                         Value.Quantity                              <br>Value.string                          <br>Interpretation                                Note                            </td>
    <td class="tg-0pky">HomeCareObservation</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-producer-organization.html" target="_blank">MedComProducerOrganization</a></td>
    <td class="tg-0pky">Organizarion</td>
    <td class="tg-0pky">Represents the producer of the<br>observation </td>
    <td class="tg-0pky">Text                                               <br>Identifier:EAN-ID                                 <br>Identifier:SOR-ID                          <br>Identifier:ProducentID            <br>Identifier:ProducentID.system              <br>Identifier:ProducentID.value                                        Name</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-media.html" target="_blank">MedComCoreMedia</a></td>
    <td class="tg-0pky">Media</td>
    <td class="tg-0pky"> Represents the attached file that is generated in connection with HomeCareObservation. </td>
    <td class="tg-0pky">Identifier                                     <br>Status                                            <br>Operator                                             <br>Content.contentType                 <br>Content.data                              <br>Content.title                             Content.creation</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-requesterorganization.html" target="_blank">MedComRequesterOrganizaion</a></td>
    <td class="tg-0pky">Organization</td>
    <td class="tg-0pky">Represents the organization that<br>requests the  observation</td>
    <td class="tg-0pky">Text                                               <br>Identifier:EAN-ID                                 <br>Identifier:SOR-ID                          <br>Identifier:Ydrenummer            <br>Name                                            <br>Contact                                              <br>Contact.name                      <br>Contact.name.given</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html" target="_blank">MedComCorePatient</a></td>
    <td class="tg-0pky">Patient</td>
    <td class="tg-0pky">Contains information about the<br>patien who have had observation done</td>
    <td class="tg-0pky">Name</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html" target="_blank">MedComCorePractitionerRole</a></td>
    <td class="tg-0pky">PractitionerRole</td>
    <td class="tg-0pky"> Describes the role of a healthcare<br>professional or another actor involved in citizen or patient care. This<br>profile is used to describe the author role and sender or recipient.</td>
    <td class="tg-0pky">Practitioner Organization</td>
    <td class="tg-0pky">Core</td>
  </tr>
    <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCorePractitioner</span></a></td>
    <td class="tg-0pky">Practitioner</td>
    <td class="tg-0pky">Describes a healthcare professional or another actor involved in citizen or patient care. This profile is used to describe the author and sender or recipient.<br><br>MedComCorePractitioner is inherited from the DkCorePractitioner, and must include a name of the practitioner if available. <br></td>
    <td class="tg-0pky">Name </td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComMessagingProvenance</span></a></td>
    <td class="tg-0pky">Provenance</td>
    <td class="tg-0pky">Describes the activity of a message, e.g. if the message is a new message or a modified message.<br>In case of a previously sent message, the Provenance resource holds a reference to this message.<br>Therefore, it is possible to get an overview of the corrections or anullment of HomeCareObservation</td>
    <td class="tg-0pky">Id<br>Target<br>OccurredDateTime<br>Timestamps<br>Activity<br>Agent<br>Entity (reference to the previous message)</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
</tbody>
</table></div>



## 2 Internal Referneces in a HomeCareObservation 
The HomeCareObservation message follows <a href ="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank"> MedCom's generic messaging model</a> 

The references between the profiles are shown in <a href="#Fig1">Figure 1</a> below. The MedCom HomeCareObservation Message profile acts as the container which includes the other profiles. From the MedComHomeCareObservationMessageHeader the sender and receiver organisations are referenced respectively as MedComProducerOrganization(sender) and MedComRequesterorganization(receiver). Additionally the MedComHomeCareObservationMessageHeader refer focus of the message, which is the MedCom HomeCareDiagnosticReport profile. 
From the MedCom HomeCareDiagnosticReport Profile the MedCom HomeCareObservation profile and MedComMedia are refered. MedComHomeCareObservation contains information about the performed observation, whereas MedComMedia profile contains information about the attached file and the attaced file, if it is sendt. The MedCom HomeCareDiagnosticReport and Medcom HomeCareObservations refer the producer of the observation, which is the MedComProducerOrganization. 
To represents the subjec a MedComCorePatient shall be used. 

MedComMessagingProvenance is used to keep track of the messaging history and define the activity of the communication. The Provenance references the MedComHomeCareObservationMessageHeader as the target and the agent.who in terms of a MedComProducerOrganization. 

<figure>
<img src="../Images/HomeCareObservationMessage.svg" alt="Show references between the profiles in an HomeCareObservation message." style="width:60%" id="Fig1">
<figcaption text-align="center"><b>Figure 1: Structure of the HomeCareObservationMessage.</b> </figcaption>
</figure>
<br><br>
