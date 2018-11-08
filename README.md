# P2PEP
P2PEP
//P2PEP Hackathon Scope


P2PEP Hackathon Scope

				Peer-to-Peer Energy Protocol




Team
Saar Yazdi
Adi Shimoni
Yonatan Cohen
Ran Zaltzman
Ariel Saghiv
General
P2PEP is a distributed billing software for adhoc microgrids or managed multi-provider power networks.

The distributed billing is registered with blockchain technology thus no single server is required and the billing data is distributed on the blockchain.

References
https://www.aclara.com/smart-infrastructure-solutions/electric-utility-solutions/
https://www.p2pep.com/pep/

Competitor analysis 
/// Please insert competitors references (other dashboards would be great)///
Product Description
P2PEP is a blockchain software which will enable distributed - adhoc billing and registration of users consuming and producing power in microgrid and national-grid power distribution  systems.

The solution relies on “smart” electric meters running the block chain software and communicating with each other in a shared IP network.



Usage Scenarios
Electric Meters for both supply and demand endpoints will communicate and register service contract for energy allocation.

The contract will commence, relying on blockchain. As long as service is consumed the billing continues (1st priority request).
If the contract ends at the set date (or prematurely) the “demand” user will pay the allocation for the service
The Electric meter shall create multiple smart contract agreements to multiple “suppliers” thus keeping a constant power usage (2nd priority requests).
If no “supplier” can supply the requested demand - the meter will block electric usage until such supplier is found
Smartphones will be able to interface the electric meter in order to obtain usage readings and billing information
As all information is stored on the smart meters - utility provider computers can access this information for aggregate consumer usage
Smartphone App
User A opens the app on his phone, he is logining in to the app and then he can see his last transactions, electricity usage and can even search for peers on the network (Been developed with native script already, I will share the code with you and we can build on top of it).

(additional: we can see a map where he can see nearby renewable energy companies and their prices per kWh, and other nearby peers connected to the grid, like here:
https://appadvice.com/app/brooklyn-microgrid/1275762825)
-The user should also see in those tabs the amount of BTC/ETH/Tokens he has in the signed wallet.

Once the user found someone(User B) to buy/sell from he can start making a transaction, where the amount of kWh to be bought/sold is determined, price per kWh, and time to consume it(timeout for contract). Once those details been determined they can sign a transaction using Lightning network where the details about the energy transaction signed on the blockchain. The transaction signed on the blockchain should show the following info:







Define Personas

Hackathon System - P2PEP
3 Computers simulating smart readers
2 will be energy producers, 1 energy consumer
All 3 nodes will display block chain activity log
Reporting Workstation -  energy produced / consumed (simulation) by single/multiple nodes
Smartphone mockup application

During the hackathon we should also present something like that to give more “feeling” about what we do and also to lower the abstraction of the system for the end user: a window with two meters of two households(A and B) on a grid, showing how household A have overcapacity and wants to sell this surplus to household B, after creating the transaction it should show an animation of the amount reduced from the capacity of household A and being transferred to household B.
Should look something like that:




System Overview



Smart Node Design
Electric Power Software controlled Relay 
Processor capable of running blockchain software
Network interface to other nodes (over power)
Network interface to client side


Bill of Materials BOM

Component
Design Cost
Sell Cost
Scale
Smart Meter
High
With Meter
1 Per Household
Management Station
High
High
2 Per system
Smartphone App
High
Free
1 Per Household



Functionality Breakdown

Smart Meter 
Request “Demand”
Advertise “Supply”
Usage Start
Usage End
PingOtherMeter
Advertise Existing Contracts
Provide blockchain to user end device (smartphone, control center)

Central Management Frontend
Receive network nodes
Receive network blockchain contracts
Usage by 1 node between date/time
Production by 1 node between date/time
Time and date started
Amount in kWh
Price per kWh
Period to consume.

Smartphone application
Review current user usage
Review current user contracts
Time and date started
Amount in kWh
Price per kWh
Period to consume.






Feature Roadmap



Feature Name
Description
Research supporting it
P1: Must-Have
Account Creation
User registration, sign in, and account page so the user can access all their relevant and specific data such as previous purchases.
Secondary research, competitor analysis: tool for generating a user base and loyalty






























P2: Nice to have




































P3: Surprising and delightful




































P4: Can come later





































Software Design & Architecture 
Analysis
1.what data we need/want to collect?
2.what data should be stored on the blockchain?(please note, blockchain are slow and expensive so must be as little as possible )
3.what data should be private?

//Add Site map//

//Create Task progression and user Flows//

//Create content wireframes//
//create design patterns and basic styleguide//

//Create wireframe and prototype//
Design Dilemmas
Application engine for thin smart meters



Option 1
Option 2
Option 3
RAM






Processing






Storage







Which blockchain tech



Option 1
Option 2
Option 3

























Fraud Mitigation



Option 1
Option 2
Option 3
Meter theft






Meter Override






Protocol forging








Delays and Packetloss over the network



Option 1
Option 2
Option 3
Lossy Network






Cellular GPRS






Satellite delay







Smart Meter


Control Center
General

Use Cases

Functionality

Datastorage

Interfaces


Smartphone Application
General

Use Cases

Functionality

Datastorage

Name
Type
Description
Notes
Personal details
Encrypted details
User login details


Meter details
Meter credentials
Support multiple meters per user


Meter supply
History Log
Summarized history of meter supply


Meter demand
History Log
Summarized history of meter demand




Interfaces


Dashboards










Reference Links
https://www.cooperativeenergy.coop/gas-and-electricity/smart-hub/
https://www.telegraph.co.uk/money/consumer-affairs/six-reasons-say-no-smart-meter/
https://sse.co.uk/smart-meters
https://www.silabs.com/solutions/smart-meters
https://www.huawei.com/minisite/iot/en/smart-ami.html

