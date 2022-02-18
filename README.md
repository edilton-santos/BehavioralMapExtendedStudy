# Behavioral Map Extended Study

Before running the Behavioral, you need to install Neo4J Desktop. You can do the **download** the Neo4J Desktop on this website https://neo4j.com/download/?ref=try-neo4j-lp.

The folder **Neo4J APOC Configuration** stores the APOC API configuration file.
**Neo4J and APOC configuration.pdf** file describes how to create a local database and APOC configuration process.

We provide the configuration rules (CR) files used in this study are available in the folder **Configuration Rules (CR) files**. Also, each CR file available represents a configuration identified at runtime. To create the Behavioral Map and look for Architectural Smell, use the scripts are available in the folder **Behavioral Map scripts**. In the **Results** folder, you find the Architectural Bad Smell (**ABS**) **analysis results** and a list of all **features activated at runtime** during the study in each system.

Scripts available in the folder **Behavioral Map scripts**:
- **Import_CR_file_and_create_the_Behavioral_Map.cypher**: Script used to import CR file and create the Behavioral Map.
- **Hub_Like_Dependency.cypher**: Used to look for Hub-Like Dependency architectural smell in the configuration.
- **Hub_Like_Dependency_for_SHE.cypher**: Used to look for Hub-Like Dependency architectural smell in SHE Framework.
- **Cyclic_Dependency.cypher**: Used to look for Cyclic Ddependency smell in the configuration.
- **Extraneous_Connector.cypher**: Used to look for Extraneous Connector architectural smell in the configuration.
- **Look_for_Extraneous_Connector_between_Controllers_and_Sensors.cypher**: Used to look for Extraneous Connector between Controllers and Sensors in the Behavioral Map.
- **Look_for_Oppressed_Monitors.cypher** Used to look for Oppressed Monitors in the configuration.
- **Get-all-features-in-the-map.cypher**: Used to get all features and their relationship on the map.
- **Delete-the-graph.cypher**: Used to delete all maps in the database.

**Configuration Rules (CR) files folder was divided into three subfolders, as follow:**
- **Adasim**: Find the CR files used to create the behavioral map and make the ABS analysis in Adasim version AdaptiveRoutingAlgorithm and QLearningRoutingAlgorithm.
- **SHE Framework**: Find in this folder the CR files used to create the behavioral map and make the ABS analysis in adaptations 1 and 2 of the SHE.
- **mRubis**: Find in this folder all CR files used to create the behavioral map and make the ABS analysis in mRubis Self-healing (versions ECAFeedbackLoop, StateBasedFeedbackLoop, and StateBasedMapeFeedbackLoop) and self-optimization (EventBasedMapeFeedbackLoop).

**How to use the Behavioral Map**: 
- Execute the script in the file Import_CR_file_and_create_the_Behavioral_Map.cypher to import the CR file and create the map.
- To look for Cyclic Ddependency smell, execute the script Cyclic_Dependency.cypher.
- To look for Hub-Like Dependency smell, execute the script Hub_Like_Dependency.cypher or Hub_Like_Dependency_for_SHE.cypher (used only in SHE Framework).
- To look for Oppressed Monitors smell, execute the script Look_for_Oppressed_Monitors.cypher. **Note:** Use this query only to look for architectural bad smells in the system developed using the _Publish-Subscribe architectural model_. In this study, only **SHE Framework uses such architecture**.
- To look for Extraneous Connector smell, execute the script Extraneous_Connector.cypher or Look_for_Extraneous_Connector_between_Controllers_and_Sensors.cypher. **Note:** Use this query only to look for architectural bad smells in the system developed using the _Publish-Subscribe architectural model_. In this study, only **SHE Framework uses such architecture**.
- To see all features and their relationship on the map, execute the script Get-all-features-in-the-map.cypher.
- To delete the map, execute the Delete-the-graph.cypher.
