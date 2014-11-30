// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. Two (commented-out) sample tasks are included.
// Note: tasks should be entered into this file in reverse order.

// _task2 = player createSimpleTask ["OBJ_2"];
// _task2 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task2 setSimpleTaskDestination WAYPOINTLOCATION;
// _task2 setTaskState "Created";

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
*** Insert mission credits here. ***
"]];

// ====================================================================================

// NOTES: COMMAND AND CONTROL
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Command and Control","
<br/>
COMMAND
<br/>
*** Insert information on command here
. ***
<br/><br/>
CONTROL
<br/>
*** Insert information on control here. ***
<br /><br />

COMPANY NET (FREQUENCIES FOR RT-1523G [ASIP])<br />
DOG: 70<br />
DOG 1: 71<br />
STRYKER: 72<br />
HAMMER: 73<br />
HAMMER-FO: 73.1<br />
TOMBSTONE: 74<br />
FRONTRUNNER: 75<br />
FRONTRUNNER-JTAC: 75.1<br />
STALKER: 76<br />
STALKER-JTAC: 76.1<br /><br />

DOG 1 NET (FREQUENCIES FOR AN/PRC-152)<br />
DOG 1: 100<br />
DOG 1-6: 106<br /><br />
DOG 1-1: 101<br />
DOG 1-1-A: 101.1<br />
DOG 1-1-B: 101.2<br /><br />
DOG 1-2: 102<br />
DOG 1-2-A: 102.1<br />
DOG 1-2-B: 102.2<br /><br />
DOG 1-3: 103<br />
DOG 1-3-A: 103.1<br />
DOG 1-3-B: 103.2<br /><br />
DOG 1-4: 104<br />
DOG 1-4-A: 104.1<br />
DOG 1-4-B: 104.2<br />
DOG 1-4-C: 104.3<br />
DOG 1-4-D: 104.4<br /><br />

STRYKER NET (FREQUENCIES FOR AN/PRC-152)<br />
STRYKER: 110<br />
STRYKER 6: 110.6<br />
STRYKER VICTORS: 114<br />
STRYKER VICTOR 1: 114.1<br />
STRYKER VICTOR 2: 114.2<br />
STRYKER VICTOR 3: 114.3<br />
STRYKER VICTOR 4: 114.4<br />
STRYKER 1: 110.1<br />
STRYKER 2: 110.2<br />
STRYKER 3: 110.3<br /><br />

HAMMER NET (FREQUENCIES FOR AN/PRC-152)<br />
HAMMER: 120<br />
HAMMER 1: 120.1<br />
HAMMER 2: 120.2<br /><br />

TOMBSTONE NET (FREQUENCIES FOR RT-1523G [ASIP])<br />
TOMBSTONE 1: 74.1<br />
TOMBSTONE 2: 74.2<br />
TOMBSTONE 3: 74.3<br />
TOMBSTONE 4: 74.4<br /><br />

TOMBSTONE CREW NET (FREQUENCIES FOR AN/PRC-152)<br />
TOMBSTONE: 130<br />
TOMBSTONE 1: 130.1<br />
TOMBSTONE 2: 130.2<br />
TOMBSTONE 3: 130.3<br />
TOMBSTONE 4: 130.4<br /><br />

STALKER 2 CREW NET (FREQUENCIES FOR AN/PRC-152)<br />
STALKER 2-1: 142.1<br />
STALKER 2-2: 142.2<br />
STALKER 2-3: 142.3<br />
STALKER 2-4: 142.4<br />
STALKER 2-5: 142.5<br />
STALKER 2-6: 142.6

"]];

// ====================================================================================
// NOTES: SUSTAINMENT
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Sustainment","
<br/>
MATERIAL AND SERVICES
<br/>
*** Insert information about (non-)organic weaponry that will be used during the mission. ***
<br/><br/>
MEDICAL
<br/>
*** Insert information on medical logistics here. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Insert Commander's Intent here. The Commander's Intent describes why the mission is being conducted (Purpose), how the mission will be conducted (Method) and when the mission is considered accomplished (Desired End-State). ***
<br/><br/>
CONCEPT OF THE OPERATION
<br/>
*** Insert Concept of the Operation here. This section must contain a Scheme of Maneuver and a Fire Support Plan. ***
<br/><br/>
TASKS
<br/>
*** Insert instructions for units here. ***
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
*** Insert a single mission statement here. Describe the following: Who, what, where, when and why?. Use the following sentence-structure: Our mission is to...IOT (in order to)... ***
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
ENEMY FORCES
<br/>
*** Insert information about enemy forces. It should contain the Enemy Composition, Disposition and Strength; Capabilities and Limitations; Enemy Most Likely Course of Action (EMLCOA); Enemy Most Dangerous Course of Action (EMDCOA). ***
<br/><br/>
FRIENDLY FORCES
<br/>
*** Insert information about friendly participating, adjacent and supporting forces. ***
<br /><br />
ATTACHMENTS/DETACHMENTS<br />
*** Insert information about any units that are attached. ***
<br /><br />
CIVIL/TERRAIN CONSIDERATIONS
<br />
*** Insert information about non-combatant presence in the AO and the appliance of the ROE.
<br /><br />
Insert information about the terrain ***
"]];

// ====================================================================================