### Scope and usage

The MedComHomeCareObservation profile holds information about the observation results from the municipal acute care team The MedComHomeCareObservations are collected in a MedComHomeCareObservationDiagnosticReport, that is sent as a MedComHomeCareObservation message to the general practitioner.

The observations results needs to have a observation code that defines the type of the observation.
The code for the observation shall be seleceted from a national analysis repertoire, that defines which observations and assesments methods the municipal acute care team can performe and send to the general practitioner. 
<a href="https://terminology.medcom.dk/fhir/observation-code">The national analysis repertoire can be found here. </a> 


#### Codes
In a Observation resource, codes from CodeSystems are used to describe what is observed in the elements Observation.code.coding. In the element Observation.code.coding two CodeSystem are specified. 
* The NPU codes are the preferred first choice in official Danish health IT-systems and most used laboratory codes. NPU codes hase NPU prefixes in the begining of the code. 
* MedCom codes are Danish codes that are refered as MCS- codes. 

It is required to send the long of the analysis. Both the long and short name of the performed observation can be found on MedCom's terminology server. 
[Click here to see NPU observation codes.](http://medcomfhir.dk/ig/terminology/ValueSet-NPUObservationCodesValueSet.html)
[Click here to see MCS observation codes.](http://medcomfhir.dk/ig/terminology/ValueSet-MedComObservationValueSet.html)

#### Status
In a Observation resource, it is required to specify the status of the result. When nurse from  the acute care team perform the analysis and the result from the analysis is ready then the. HomeCareObservation.status shall be #final. 


#### Interpretation
In HomeCareObservation it is required to send information that result of the observation is not interpreted (Dansk: ikke reference vurderet). 
Therefore i is required that the observation.interpretation.coding.code is "NI" not interpreted. 

#### Observation result 
The result of the observation shall be expresed using eighter Observation.value[x]:valueQuantity and Observation.value[x]:valueString element. If the observation result is numerical then the Observation.value[x]:valueQuantity shall be used and if the result is alphanumeric e.g. positive/negative then the Observation.value[x]:valueString element shall be used. Both elemets Observation.value[x]:valueQuantity og Observation.value[x]:valueString are  restricted to max 12 character due to limitations in laborartory kort.  
 <!-- The Observation.value[x]:valueQuantity element is rescrited to max 12 characters. If the result is larger than the 12 charactes is shall be added to clinicla comment.  -->