Profile: MedComHomeCareObservation
Parent: MedComCoreObservation
Id: medcom-homecare-observation
Title: "MedComHomeCareObservation"
Description: "This profile is intended to be used in HomeCareObservation to hold information about the observation results."
* effectiveDateTime MS SU
* valueString 0..1 MS
* valueString
  * ^maxLength = 12
* valueQuantity 0..1 MS
* valueQuantity.value
  * ^maxLength = 12
* code.coding[NPU].code from $NPUObservationCodesValueSet (preferred)
* code.coding[MedCom].code from $MedcomCodes (preferred)
* code.coding.display MS
* interpretation 0..1 MS
* interpretation from $obsInterpretationValueSet
* interpretation.coding.code = #NI
// * obeys medcom-homecareObservation-1
 


// Invariant: medcom-homecareObservation-1
// Description: "There shall exist a Interpretation code 'Not Interpreted' when valueQuantity is sent. "
// Expression: "if(valueQuantity.value.exists(),interpretation.coding.code = 'NI',true)"
// Severity: #error




// Instancer for observationer
//Spotprøver
Instance: 7fcb76a7-839b-4392-a2ff-f30035faca34
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "C-reaktive protein [CRP];P"
Description: "C-reaktive protein [CRP] test performed by acute care team on the subject."
* status = $ObsStatusCodeSystem#final
* code.coding = $NPU#NPU19748 "P—C-reaktivt protein; massek. = ? mg/L"
* valueQuantity.value = 26
* valueQuantity.unit = "mg/L"
* effectiveDateTime = 2023-09-12T10:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"


Instance: f70ae8b7-c1af-44a2-a21a-570c552dd7cc
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Observation of the haemoglobin"
Description: "Observation of the haemoglobin"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU].code = #NPU02319	
* code.coding[NPU].display = "B—Hæmoglobin(Fe); stofk. = ? mmol/L"
* valueQuantity.value = 7.8
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2023-09-12T10:25:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"




Instance: 1b089a05-0a5f-479d-9cbd-921a13470221
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Leukocyt Observation"
Description: "Test of leucocyte on the subject by acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU02593 "B—Leukocytter; antalk. = ? × 109/L"
* valueQuantity.value = 9.1
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-09-12T10:27:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: 4a94a70e-6957-47a8-bec7-3e27b3145668
InstanceOf:  MedComHomeCareObservation
Usage: #example
Title: "Lymphocyte observation"
Description: "Lymphocyte observation on the subject by acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU02636 "B—Lymphocytter; antalk. = ? × 109/L"
* valueQuantity.value = 2.6
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-09-12T10:30:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"



Instance: d2b89faa-979a-430d-8887-21ccdf6f238b
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Monocytes observation"
Description: "Monocytes observation performed on o subject by the acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU02840 "B—Monocytter; antalk. = ? × 109/L"
* valueQuantity.value = 0.7
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-09-12T10:32:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: f84143f7-f586-477f-af56-e50c7d152605
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Neutrophilocytes observation"
Description: "Neutrophilocytes observation performed on o subject by the acute care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU02902 "B—Neutrophilocytter; antalk. = ? × 109/L"
* valueQuantity.value = 10.1
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-09-12T10:34:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"


Instance: b22fcbe0-4977-433e-ad1c-d6545bc8c1cb
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Eosinofilocyt observation"
Description: "Eosinofilocyt observation performed on a subject by the auce care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU01933 "B—Eosinophilocytter; antalk. = ? × 109/L"
* valueQuantity.value = 0.10
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-09-12T10:36:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"



Instance: 1e2351e2-77df-4135-a77b-6a4c39e4a4ca
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Basofilocyt observation"
Description: "Basofilocyt observation performed on a subject by the auce care team"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU01349 "B—Basophilocytter; antalk. = ? × 109/L"
* valueQuantity.value = 0.05
* valueQuantity.unit = "10^9/L"
* effectiveDateTime = 2023-09-12T10:38:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: 0e4a5452-1804-42d3-82ed-484df20a09f0
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Glucose measurement"
Description: "Glucose measurement on the subject. "
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU22089 "P(kB)—Glucose; stofk. = ? mmol/L"
* valueQuantity.value = 6.8
* valueQuantity.unit = "mmol/L"
* effectiveDateTime = 2023-09-12T10:40:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"


Instance: 470d39e4-d3f9-4301-82eb-b957ba33475e
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Coagulation factor test"
Description: "Coagulation factor on the subject"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU01685 "P—Koagulation, vævsfaktor-induceret; rel.tid(aktuel/norm; INR; IRP 67/40; proc.) = ?"
* valueQuantity.value = 0.9
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* effectiveDateTime = 2023-09-12T10:42:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"







//Urinstix
Instance: 4b8f899a-df12-4301-8287-9a77d46ded3d
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Urine dipstick tests"
Description: "Urine dipstick tests on Bruno "
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU04206 "U—Protein; arb.k.(proc.) = ?"
* valueQuantity.value = 1
* valueQuantity.unit = "+"
* effectiveDateTime = 2023-09-13T12:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: f58819ff-d727-4740-a4ef-44eefc77022e
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Nitrite observation"
Description: "Nitrit observation on Bruno"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU21578 "U—Nitrit; arb.k.(proc.) = ?"
* valueString = "Negative" 
* effectiveDateTime = 2023-09-13T12:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: 2fc2c078-825b-491d-9f8e-34926eb4f06f
InstanceOf: MedComHomeCareObservation 
Usage: #example
Title: "Leukocyt urine test"
Description: "Test of leucocyt using urine dipstick"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU03987 "U—Leukocytter; arb.k.(proc.) = ?"
* valueQuantity.value = 2
* valueQuantity.unit = "+"
* effectiveDateTime = 2023-09-13T12:24:08+02:00
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"





// TOBS
Instance: 3fd3835d-1758-4d22-8547-000182752817
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Respiration frequency"
Description: "Respiration frequency of Elmer"
* status = $ObsStatusCodeSystem#final
* code.coding[MedCom] = #MCS88122 "Pt—Respiration; frekvens = ? X 1/min"
* valueQuantity.value = 19
* valueQuantity.unit = "1/min"
* effectiveDateTime = 2023-09-13T09:24:08+02:00
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: ba691ee4-6d38-4f5b-82f1-40b54e3b8ad1
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Heart Rate"
Description: "HeartRate of Elmer"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU21692 "Hjerte—Systole; frekv. = ? × 1/min"
* valueQuantity.value = 92
* valueQuantity.unit = "1/min"
* note.text = "Patienten har været ud og går lige inden målingen."
* effectiveDateTime = 2023-09-13T09:24:09+02:00
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: 8917f29d-269c-4bb3-8ce9-d255c351d52b
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Systolic Blood Pressure"
Description: "Systolic Blood Pressure of Elmer"
* status = $ObsStatusCodeSystem#final 
* code.coding[NPU] = #DNK05472 "Arm—Blodtryk(systolisk); tryk = ? mmHg"
* valueQuantity.value = 147
* valueQuantity.unit = "mmHg"
* effectiveDateTime = 2023-09-13T09:24:10+02:00
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: 6bf03841-8397-4a2a-9f9a-8966b0cfa571
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Consciousness"
Description: "Consciousness of Elmer"
* status = $ObsStatusCodeSystem#final
* code.coding[MedCom] = #MCS88126 "Pt—Bevidsthedsniveau; arb.antal(værdi 0-3) = ?"
* valueQuantity.value = 0
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* effectiveDateTime = 2023-09-13T09:24:11+02:00
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: 85fd1372-cf02-49c6-bd45-7205f5541a66
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "Temperature"
Description: "Temperature of Elmer"
* status = $ObsStatusCodeSystem#final
* code.coding[NPU] = $NPU#NPU08676 "Pt—Legeme; temp. = ? °C"
* valueQuantity.value = 38.7
* valueQuantity.unit = "°C"
* effectiveDateTime = 2023-09-13T09:24:12+02:00
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"

Instance: f64a0a78-53cf-4a7f-9b89-4a2338a4935c
InstanceOf: MedComHomeCareObservation
Usage: #example
Title: "TOBS"
Description: "TOBS of Elmer"
* status = $ObsStatusCodeSystem#final
* code.coding[MedCom] = $MedCom#MCS88125 "Pt—Tidlig Opsporing af Begyndende Sygdom (TOBS) score; antal (værdi 0-15) = ?" 
* valueQuantity.value = 3
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* effectiveDateTime = 2023-09-13T09:24:13+02:00
* subject = Reference(bbcd4817-1c4b-4089-a712-346f65ec16f9)
* interpretation.coding = $obsInterpretation#NI "Not Interpreted"