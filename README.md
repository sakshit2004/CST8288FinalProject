	Version History:
       
•	Version: 01
•	Authors: 
          Srishti Srishti
         Astha Pundir
       Arshpreet Singh
      Sakshit Sharma
•	Date: 
       19th of March, 2024.

	Introduction: 

 Welcome to the documentation for the Food Waste Reduction Platform (FWRP), a comprehensive solution aimed at addressing the global issue of food waste. This document provides an overview of the system architecture, design, and functionality for stakeholders involved in its development and deployment.  
The FWRP serves as a vital tool in promoting sustainability, reducing hunger, and building more resilient food ecosystems by facilitating the efficient redistribution of surplus food items. Key features include user registration and authentication, inventory management for retailers, surplus food identification and listing, claiming surplus food by charitable organizations, purchasing surplus food by consumers, surplus food alerts for users, and additional bonus functionality.  
The system follows a 3-tier architecture, encompassing a Presentation Layer for user interactions, a Business Layer for business logic, and a Database Layer for data storage and management. Use Case Diagrams illustrate primary functionalities, while Class Diagrams and Component Diagrams further elucidate the system's design. Security and deployment architectures ensure the protection of user data and system integrity while accommodating scalability and high availability.  
Overall, the Food Waste Reduction Platform represents a collaborative effort to combat food waste effectively, providing stakeholders across the food supply chain with the tools necessary to make a positive impact on one of the most pressing challenges of our time







	Targeted Audience: 
.  
      This document caters to various stakeholders involved in the development and deployment of the Food Waste Reduction Platform (FWRP). Project managers rely on comprehensive insights into the system's architecture and functionalities to effectively coordinate and manage the project. Developers need detailed technical specifications to guide their implementation efforts accurately. Database administrators require insights into the database architecture and schema to ensure efficient data management. Quality assurance personnel rely on clear documentation of functional requirements and testing methodologies to conduct thorough testing and ensure the system's reliability.

	Scope: 

In Scope:
1.	Detailed documentation of the Food Waste Reduction Platform (FWRP), including its architecture, design, and functionality.
2.	Description of the targeted audience, including project managers, developers, database administrators, and quality assurance personnel.
3.	Explanation of the application architecture, encompassing the presentation layer, business layer, and database layer.
4.	Overview of the business architecture, covering key functionalities such as registration, inventory management, surplus food listing, and transactions.
5.	Detailed design elements including UML class diagrams, component diagrams, and data architecture such as database tables and relationships.
6.	Security architecture considerations, including user authentication, data encryption, and data protection measures.
7.	Deployment architecture, discussing infrastructure setup, deployment strategy (cloud-based and on-premises), and scalability considerations.
8.	Testing methodologies including unit testing, API testing, and integration testing.

Out of Scope:
1.	Legal or regulatory compliance considerations beyond basic security measures
2.	Marketing strategies or user adoption plans.
3.	Detailed financial analysis or cost projections related to deployment.
4.	Third-party integrations or partnerships.
5.	Training materials or user manuals for end-users.

Overall, this document focuses on providing a comprehensive understanding of the Food Waste Reduction Platform's architecture, design, and functionality, catering to stakeholders involved in its development and deployment. It does not delve into operational or post-deployment aspects but rather focuses on the foundational elements necessary for successful implementation.


	Application Architecture: 

   The Food Waste Reduction Platform (FWRP) is structured based on a 3-tier architecture:

	Presentation Layer:
	Responsible for managing user interactions and presenting information to users.
	Utilizes a user interface (UI) or follows the Model-View-Controller (MVC) pattern.
	Facilitates user input, navigation, and presentation of data.

	Business Layer:
	Contains the core business logic and functionality of the application.
	Processes user requests received from the presentation layer.
	Implements business rules, workflows, and algorithms to fulfill user requirements.

	Database Layer:
	Manages the storage and retrieval of persistent data used by the application.
	Utilizes a relational database management system (RDBMS) for data storage.
	Stores structured data in tables and enforce data integrity through relationships and constraints.

This architecture separates concerns and promotes modularity, scalability, and maintainability of the FWRP application. The presentation layer focuses on user interaction, the business layer encapsulates application logic, and the database layer handles data storage and retrieval. This structured approach enables easier development, testing, and maintenance of the application components.

	Business Architecture: 

1.	The Registration Use- Case: 

This use case facilitates the creation of user accounts on the platform, enabling individuals to access its features and functionalities. This functionality encompasses the processes of registration and authentication, ensuring secure and personalized user experiences tailored to the needs of different user types: retailers, consumers, and charitable organizations. The "Registration" functionality serves as the gateway for individuals to join the platform and engage with its features. By streamlining the registration and authentication processes, the platform ensures a seamless onboarding experience for users while maintaining the security and integrity of user accounts and information. Additionally, the ability to select user types during registration enables the platform to tailor the user experience and provide relevant functionalities based on the user's role and preferences.

   Fig.01

2.	The Retailers Use-Case:

The "Retailers" functionality empowers retailers to effectively manage their inventory, identify surplus food items, and facilitate their redistribution for donation or sale on the platform. By providing robust inventory management tools and mechanisms for surplus food identification and listing, the platform enables retailers to mitigate food waste, promote sustainability, and contribute to efforts addressing hunger and food insecurity.
   
   



 Fig.02

3.	 Charitable Organization Use Cases:

	The Charity food claim system:
   The Charity Food Claim System is designed to facilitate the donation process between food retailers and charitable organizations, aiming to reduce food waste and support those in need. The use case diagram outlines the primary functionalities and interactions within the system. It provides a visual representation of the functionalities and interactions within the Charity Food Claim System. It outlines the steps involved in listing surplus food items, claiming those items by charitable organizations, and updating the retailer's inventory accordingly. This system aims to streamline the process of food donation, promoting efficiency and reducing food waste.

  Fig.03
	Purchase and Inventory Updates: 
 The use case diagram illustrates the interaction between consumers and retailers within the Food Waste Reduction Platform. The main actors involved are Consumers, representing users browsing and purchasing food items, and Retailers, representing users managing their inventory of food items.The first use case, 'Purchase,' allows Consumers to browse and select food items listed by Retailers on the platform.

Upon successful 'purchase' by a Consumer, the system triggers the 'Update Inventory' use case. This ensures that the Retailer's inventory is automatically updated to reflect the change in stock availability, maintaining accuracy and consistency in inventory management.

 Fig.04

	The Surplus Food Alert Use-Case: 
The "Surplus Food Alert" functionality enables users to subscribe to receive notifications about surplus food items available on the platform based on their location, communication method, and food preferences. Users receive automatic notifications whenever retailers list surplus food items, facilitating timely access to opportunities for acquiring surplus food. The "Surplus Food Alert" functionality serves to enhance user engagement and participation on the platform by providing timely notifications about surplus food items based on user preferences. 
 Fig.05 


	The Feedback Use-Case: 

The "Surplus Food Transaction Feedback" use case diagram outlines the functionalities related to allowing consumers to provide feedback and ratings for their experiences with surplus food transactions on the platform. 
   Fig.06
	Detailed Design: 

	UML Class Diagrams: 

 Fig.07

	Component Diagrams: 
 Fig.08

	Description:
                                        Classes

	FoodItem: Represents a food item with attributes like name, quantity, expiration date, and status. It has a method to update the status of the food item.
	DataSource: Represents a data source with attributes like dbInstance and has methods to get an instance and a connection.
	UserManager: Represents a user manager with methods to add, remove, select, update, and retrieve all users.
	User: Represents a user with methods to subscribe.
	Retailer: Represents a retailer with attributes like inventory and methods to get inventory, update inventory, and subscribe users.
	RetailerManager: Represents a retailer manager with methods to add a new item, update quantity, set expiration date, identify surplus items, and list surplus items.
	LoginUser: Represents a user login with methods to login, logout, and authenticate.
	Register: Represents a user registration with methods to register.
	Password: Represents a password with methods to set and verify.
	Authenticate: Represents an authenticate with methods to set and verify.
	Feedback: Represents feedback with methods to provide feedback on food transactions.
	Consumer: Represents a consumer with attributes like purchased items and methods to purchase an item and subscribe.
	ConsumerFeedback: Represents consumer feedback with methods to provide feedback.
	Charitable Organization: Represents a charitable organization with attributes like claimed items and subscriptions and methods to claim food items and subscribe.
	Charitable OrganizationManager: Represents a charitable organization manager with methods to claim food items and update retailer inventory.
	Subscription: Represents a subscription with attributes like location, communication method, and food preferences.
	SurplusFoodAlert: Represents a surplus food alert with methods to notify retailers.
	Interfaces
	User: Represents a user interface with methods to subscribe.
	Authenticate: Represents an authenticate interface with methods to set and verify.

	Data Architecture:
                                     Database Architecture:
1.	User Table:
	Fields:
         user_id (Primary Key)
         name
        email
       password
      user_type
	Description: Stores information about all users of the platform. Each user has a unique identifier, name, email, password, and user type (Retailer, Consumer, or Charitable Organization).
2.	 Retailer Table:
	Fields:
        retailer_id (Primary Key)
       user_id (Foreign Key)
      storeName
     address
	Description: Stores information about retailers registered on the platform. Each retailer is associated with a user.
3.	Consumer Table:
	Fields:
          consumer_id (Primary Key)
         user_id (Foreign Key)
        address
      phoneNum
     mailAddress
	Description: Stores information about consumers registered on the platform. Each consumer is associated with a user.
4.	 Charitable Organization Table:
	Fields:
       charitable_org_id (Primary Key)
     user_id (Foreign Key)
    orgName
   orgAddress
	Description: Stores information about charitable organizations registered on the platform. Each organization is associated with a user.
5.	  Claim Table:
	Fields:
claim_id (Primary Key)
charitable_org_id (Foreign Key)
inventory_id (Foreign Key)
	Description: Stores information about claims made by charitable organizations for surplus food items. Each claim is associated with a charitable organization and an inventory item.
6.	Transactions Table:
	Fields:
transaction_id (Primary Key)
consumer_id (Foreign Key)
inventory_id (Foreign Key)
	Description: Stores information about transactions where consumers purchase surplus food items. Each transaction is associated with a consumer and an inventory item.
7.	  Surplus Food Table:
	Fields:
surplus_food_id (Primary Key)
retailer_id (Foreign Key)
foodName
quantity
expirationDate
subscription_id (Foreign Key)
	Description: Stores information about surplus food items listed by retailers. Each item is associated with a retailer and a subscription, allowing users to track available surplus food items and receive alerts based on their location and preferred communication method. Automatic notifications can be triggered whenever retailers list surplus food items that match the subscribed criteria, ensuring users stay informed about available surplus food in their area.
8.	 Inventory Table:
	Fields:
inventory_id (Primary Key)
retailer_id (Foreign Key)
nameInv
quantityInv
expiry
	Description: Stores information about inventory items managed by retailers. Each item is associated with a retailer and includes details such as name, quantity, and expiration date.
9.	Subscription Table:
	Fields:
subscription_id (Primary Key)
user_id (Foreign Key)
locationUser
communication_method
subsDate
last_notification_date
	Description: Stores information about user subscriptions for surplus food alerts. Each subscription is associated with a user, allowing users to receive notifications based on their location and preferred communication method. The subscription table facilitates efficient management and tracking of user subscriptions and ensures users stay informed about available surplus food items.
10.	 Feedback Table
	Fields: 
feedback_id (Primary Key)
 consumer_id (Foreign Key)
 feedback_date
comments
	Description: This setup allows consumers to provide feedback and ratings for their experiences with surplus food transactions. The Feedback Table records the feedback provided by consumers, including the rating given and any additional comments. The relationship with the Consumers Table ensures that each feedback entry is linked to the respective consumer who provided it, facilitating transparency and accountability within the platform.
                                                       ERD Diagram:
  Fig.09

                          Physical Diagram:
   Fig.10
	Security Architecture:

The security architecture of the Food Waste Reduction Platform (FWRP) prioritizes the protection of user data and system integrity. Key considerations include:
a.	User Authentication:
Implementation of robust user authentication mechanisms using industry-standard practices.
Secure storage and handling of user credentials, employing strong password hashing techniques.
Utilization of session management to ensure secure user sessions and prevent session hijacking.
b.	Data Encryption: 
Encryption of sensitive data in transit using secure communication protocols such as HTTPS. 
Implementation of encryption algorithms to encrypt data at rest, protecting against unauthorized access to stored data.
Utilization of encryption key management practices to safeguard encryption keys and ensure data confidentiality.
c.	Data Protection:
Implementation of input validation and sanitization techniques to prevent common security vulnerabilities such as SQL injection.
Adoption of parameterized queries and prepared statements to mitigate SQL injection risks.
Implementation of access controls and least privilege principles to restrict access to sensitive data and prevent unauthorized data modification or deletion.

	 Deployment Architecture: 
   The deployment architecture of the Food Waste Reduction Platform (FWRP) encompasses various facets, including infrastructure setup, deployment strategy, and scalability considerations. This section displays the key components of the deployment model, shedding light on the infrastructure, deployment strategy, and scalability measures adopted by the FWRP.

Infrastructure Setup
The infrastructure setup for the FWRP entails the provisioning of servers, databases, and networking resources to support the platform's operations.

Servers:
The FWRP utilizes a distributed server architecture to ensure reliability and performance. Multiple servers are deployed to handle different aspects of the platform, including frontend, backend, and database servers.
Databases:
The FWRP relies on a robust database management system (DBMS) to store and manage persistent data. A relational database, MySQL is chosen for its flexibility, scalability, and support for ACID (Atomicity, Consistency, Isolation, Durability) properties. Additionally, the database setup includes measures for data replication, backup, and disaster recovery to safeguard against data loss and ensure high availability.

Deployment Strategy
The deployment strategy for the FWRP encompasses decisions regarding the hosting environment, deployment model, and deployment process.

Cloud-Based Deployment:
The FWRP adopts a cloud-based deployment model, leveraging the infrastructure and services provided by leading cloud service providers Amazon Web Services (AWS). Cloud-based deployment offers numerous advantages, including scalability, flexibility, and cost-effectiveness. By hosting the platform in the cloud, the FWRP can dynamically scale resources based on demand, optimize performance, and minimize infrastructure management overhead.

On-Premises Deployment:
While the primary deployment strategy for the FWRP is cloud-based, an on-premise deployment is considered for requiring greater control over the infrastructure and compliance with regulatory requirements. In an on-premises deployment, FWRP is hosted within our own data centers, offering enhanced security and data sovereignty.

Scalability Considerations
Scalability is an important consideration in the deployment architecture of the FWRP, ensuring that the platform can accommodate growing user demand and handle spikes in traffic effectively.

Horizontal Scalability:
FWRP ensures horizontal scalability by adding servers or resources to handle workload spikes, preventing performance issues. This approach distributes the load seamlessly, maintaining optimal performance under varying user traffic.

Vertical Scalability:
FWRP implements vertical scalability to boost individual server performance, upgrading CPU and memory for efficient workload handling. This ensures optimal resource utilization and enhanced performance for resource-intensive tasks.

Auto-Scaling:
FWRP utilizes auto-scaling mechanisms to adjust server instances or containers dynamically, ensuring optimal performance and resource efficiency. This minimizes wastage and costs while adapting to fluctuating traffic patterns seamlessly.

	Testing Module: 
Unit Testing
Unit testing in the Food Waste Reduction Platform (FWRP) employs JUnit for Java applications to validate the functionality of individual classes and methods in isolation. Each class and method, such as those within SubscriberDAO, InventoryManagerDAO, and UserAuthenticationDAO, undergoes rigorous testing to ensure they interact with the database as expected. Through unit testing, potential issues and bugs are identified early, ensuring the reliability and correctness of each component.
Integration Testing
Following unit testing, integration testing verifies the seamless interaction between different components of the FWRP application. For instance, integration tests validate that SubscriptionManager directly interacts with SubscriberDAO and accurately sends alerts. This ensures that various modules work together harmoniously, enhancing the overall functionality and reliability of the application.
API Testing
If the FWRP exposes a RESTful API or similar interfaces, API testing becomes crucial. Tools like Postman or automated frameworks like REST-assured are utilized for API testing. This ensures that API endpoints perform as expected, handle requests and responses correctly, and adhere to specified requirements. By conducting API testing, the FWRP ensures the robustness and reliability of its external interfaces, enhancing interoperability and usability.


	References: 
1.	Gamma, E., Helm, R., Johnson, R., & Vlissides, J. (1994). Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley. https://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612

2.	Fowler, M. (2002). Patterns of Enterprise Application Architecture. Addison-Wesley Professional. https://www.amazon.com/Patterns-Enterprise-Application-Architecture-Martin/dp/0321127420


3.	Ambler, S. W. (2002). Agile Modeling: Effective Practices for eXtreme Programming and the Unified Process. John Wiley & Sons. https://www.amazon.com/Agile-Modeling-Effective-Practices-Programming/dp/0471202827

4.	Amazon Web Services. (n.d.). AWS - Cloud Computing Services.https://aws.amazon.com/


5.	MySQL. (n.d.). The world's most popular open-source database. https://www.mysql.com/


	Abbreviation:
1.	FWRP: Food Waste Reduction Platform
2.	UI: User Interface
3.	MVC: Model-View-Controller
4.	RDBMS: Relational Database Management System
5.	HTTPS: Hypertext Transfer Protocol Secure
6.	ACID: Atomicity, Consistency, Isolation, Durability
7.	AWS: Amazon Web Services
8.	DBMS: Database Management System
9.	CPU: Central Processing Unit
10.	API: Application Programming Interface
11.	JUnit: Java Unit Testing Framework



