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
[Example3](./Bundle-ReceiveTestExample3.html) | E-CPR, no comments, requesting doctor's initials unknown |
[Example4](./Bundle-ReceiveTestExample4.html) | Many observations, requesting doctor's initials are known |
[Example5](./Bundle-ReceiveTestExample5.html) | Invalid example where one observation is missing af result, the other has invalid NPU code, the diagnostic report is missing status and wrong use of role for the nurse. |


#### Extras

|  Test example     |     Description     |
|---|---|
[Extra1](./Bundle-ReceiveTestExampleExtra1.html) | Date: 2026-06-02 |
[Extra2](./Bundle-ReceiveTestExampleExtra2.html) | Date: 2025-12-31 |
[Extra3](./Bundle-ReceiveTestExampleExtra3.html) | Date: 2014-11-27 |
[Extra4](./Bundle-ReceiveTestExampleExtra4.html) | Date: 2020-01-02 |
