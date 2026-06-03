Instance: ReceiveTestExample5
InstanceOf: MedComHomeCareObservationMessage
Title: "ReceiveTestExample5"
Description: "Test Example 5 used in HomeCareObservation receive test protocol. This is an invalid example with a practitioner role that does not have a code and no value for a observation result"
Usage: #example
* type = $BundleType#message
* timestamp = 2026-04-07T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/ReceiveTestExample5-MessageHeader"
* entry[=].resource = ReceiveTestExample5-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoTestElmerPatient"
* entry[=].resource = BrunoTestElmerPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/ReceiveTestExample5-DiagnosticReport"
* entry[=].resource = ReceiveTestExample5-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/OdaOverNursePractitionerRole"
* entry[=].resource = OdaOverNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/OdaOverNurse"
* entry[=].resource = OdaOverNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrgKnownDr"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrgKnownDr
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/ReceiveTestExample5-Provenance"
* entry[=].resource = ReceiveTestExample5-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoWrongNPU"
* entry[=].resource = GlucoseObservationOnBrunoWrongNPU
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoNoValue"
* entry[=].resource = CReaktiveProteinObservationOnBrunoNoValue



Instance: GlucoseObservationOnBrunoWrongNPU
InstanceOf: MedComHomeCareObservation
Title: "Glucose measurement"
Description: "Glucose measurement on Bruno Elmer. Used in testprotocol test examples."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU2026 "P; Invalid Code"
* valueQuantity.value = 6.8
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2025-08-07T14:47:23+02:00
* subject = Reference(BrunoTestElmerPatient)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: CReaktiveProteinObservationOnBrunoNoValue
InstanceOf: MedComHomeCareObservation
Title: "C-reaktive protein [CRP];P on Bruno"
Description: "C-reaktive protein [CRP] test performed by acute care team on Bruno."
Usage: #inline
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPUObservationCodes#NPU19748 "P—C-reaktivt protein; massek. = ? mg/L"
* effectiveDateTime = 2025-08-09T13:47:23+02:00
* subject = Reference(BrunoTestElmerPatient)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"
* note.text = "Denne observation er dateret til efter det kommunale prøvesvar er genereret."

Instance: ReceiveTestExample5-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "ReceiveTestExample5 Message Header"
Description: "Message Header for ReceiveTestExample5"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrgKnownDr)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(ReceiveTestExample5-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition|1.1"

Instance: ReceiveTestExample5-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "ReceiveTestExample5 Diagnostic Report"
Description: "Diagnostic Report for the ReceiveTestExample5"
Usage: #inline
* issued = 2026-04-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoTestElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(OdaOverNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoWrongNPU)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoNoValue)

Instance: ReceiveTestExample5-Provenance
InstanceOf: MedComMessagingProvenance
Title: "ReceiveTestExample5 Provenance"
Description: "Provenance for the ReceiveTestExample5"
Usage: #inline
* target = Reference(ReceiveTestExample5-MessageHeader)
* occurredDateTime = 2026-04-07T15:00:00+02:00
* recorded = 2026-04-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)

Instance: BrunoTestElmerPatient
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Used in testprotocol test examples."
Usage: #inline
* identifier[cpr].value = "2509479989"
* name[official]
  * use = #official
  * given = "Bruno Test"
  * family = "Elmer"

Instance: OdaOverNurse
InstanceOf: MedComCorePractitioner
Title: "Oversygeplejerske"
Description: "Oversygeplejerske. Used in testprotocol test examples."
Usage: #inline
* name
  * given[0] = "Oda"
  * given[1] = "Over"
  * family = "Pedersen"
* telecom
  * system = #phone
  * value = "+45 05577668"

Instance: OdaOverNursePractitionerRole
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner. Used in testprotocol test examples."
Usage: #inline
* practitioner = Reference(OdaOverNurse)
* code.text = "Oversygeplejerske"