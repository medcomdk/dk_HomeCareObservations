The examples presented below are intended to be used in the test protocol for receiving a HomeCareObservation (HCO) message. Testprotocols can be found on the [GitHub pages for HomeCareObservation](https://medcomdk.github.io/dk_HomeCareObservations/#2-test-and-certification). All test examples are created by MedCom. 

#### Test patient/citizens
The examples are based on the test patient:
* Name: Bruno Elmer
* CPR-nr.: 250947-9989


#### Test examples for receiving HomeCareObservation

|  Test example     |     Description     |
|---|---|
[Example1](./Bundle-ReceiveTestExample1.html) | Two observations without clinical or analysis comments and the requesting doctor's initials is known |
[Example2](./Bundle-ReceiveTestExample2.html) | With a clinical comment and requesting doctor's initials are unknown. Two observations: One with an analysis comment + an NPU code and the other without an analysis comment and a result using the MedComObservation valueset. Both observations use a comparator ('<' or '>') |
