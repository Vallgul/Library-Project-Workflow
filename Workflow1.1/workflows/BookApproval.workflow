{
	"contents": {
		"19ff2f94-95ad-4bec-a2b0-3feedd1a9c6a": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "bookapproval",
			"subject": "BookApproval",
			"name": "BookApproval",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Step"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Approved"
				},
				"c87f7787-d573-4f33-a003-e4a9f3371a18": {
					"name": "Rejected"
				}
			},
			"activities": {
				"7530569d-f604-4f77-bb13-0d8d421dfed0": {
					"name": "Approval Needed?"
				},
				"1d48a8bc-51d2-47f7-be97-7c086c24de24": {
					"name": "Department Manager Approval Decision"
				},
				"dadbb7cf-4ee3-4235-8337-74f9d9dbad6c": {
					"name": "Approve by Department Manager"
				},
				"786e3920-320b-4b2b-ba36-04f80379bcaf": {
					"name": "Approve by Purchasing Manager"
				},
				"9d7c7d6f-7c24-4585-8dab-bfbd0f238d42": {
					"name": "Purchasing Manager Approval Decision"
				},
				"f317d87a-75e8-4c42-9da3-076ed1b8aa4f": {
					"name": "Approve by Financial Audit Manager"
				},
				"dffb1e74-aab2-42b7-bbba-279be8bb4e25": {
					"name": "Financial Audit Manager Approval Decision"
				},
				"ce7578d5-4d9c-474a-b866-79b12899b14d": {
					"name": "Init History"
				},
				"8e6aaede-f59c-47fa-aeba-58339d23a45d": {
					"name": "Process Department Manager Decision"
				},
				"b9b6b276-18d9-4eee-a0eb-68ef2901edb3": {
					"name": "Process Purchasing Manager Decision"
				},
				"3201c9e5-e24b-4ea1-a984-fa3f29550111": {
					"name": "Process Financial Audit Manager Decision"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d5f9e19b-4d7e-4b70-b81a-76284c03b25e": {
					"name": "No"
				},
				"de7c8122-32ea-49f0-8324-ba6789cf4213": {
					"name": "Yes"
				},
				"96f71509-9162-4aee-be28-b267bcd4e024": {
					"name": "Rejected"
				},
				"1040eab8-e0e9-4f5e-91c0-57336c19de96": {
					"name": "Approved"
				},
				"b03fe07d-261e-4f4b-8799-9e0309cc08c3": {
					"name": "Yes"
				},
				"45638d0e-a593-48bc-a967-ffa575710f8f": {
					"name": "SequenceFlow23"
				},
				"b16c0387-68c0-4c07-b2db-a0249dab7cdf": {
					"name": "Approved"
				},
				"a6bb1672-ba9d-4190-98d7-23561be9524f": {
					"name": "Rejected"
				},
				"0b11c02d-5c80-4163-b142-cc2cf7ff20db": {
					"name": "SequenceFlow26"
				},
				"2d3802e6-6269-44f6-936c-36de5e04e27e": {
					"name": "Approved"
				},
				"b673f31f-3881-4fd4-97f8-8bc4cbb76d44": {
					"name": "Rejected"
				},
				"2a64f2f6-e9d9-4f70-9d83-dab129bf9fdb": {
					"name": "SequenceFlow29"
				},
				"c257d468-d68e-4a7a-b5ed-2ace7f6699f3": {
					"name": "SequenceFlow30"
				},
				"f66ebb4f-9ae1-40f3-91fe-e6f1a2c76e6b": {
					"name": "SequenceFlow31"
				},
				"90b27457-4a13-406a-8a28-5ea389a18f09": {
					"name": "SequenceFlow32"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Step",
			"sampleContextRefs": {
				"bd241edc-6e8d-46c1-8eb6-92255d6e0e72": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Approved"
		},
		"c87f7787-d573-4f33-a003-e4a9f3371a18": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "Rejected",
			"eventDefinitions": {
				"4e0374e9-2d0e-4850-9c9a-023d15857fb5": {}
			}
		},
		"7530569d-f604-4f77-bb13-0d8d421dfed0": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "d5f9e19b-4d7e-4b70-b81a-76284c03b25e"
		},
		"1d48a8bc-51d2-47f7-be97-7c086c24de24": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Department Manager Approval Decision",
			"default": "96f71509-9162-4aee-be28-b267bcd4e024"
		},
		"dadbb7cf-4ee3-4235-8337-74f9d9dbad6c": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/BookApproval/ApprovedbyDepartmentManager.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvedbydepartmentmanager"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "Approve by Department Manager"
		},
		"786e3920-320b-4b2b-ba36-04f80379bcaf": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/BookApproval/ApprovedbyDepartmentManager.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvedbydepartmentmanager"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask5",
			"name": "Approve by Purchasing Manager"
		},
		"9d7c7d6f-7c24-4585-8dab-bfbd0f238d42": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Purchasing Manager Approval Decision",
			"default": "a6bb1672-ba9d-4190-98d7-23561be9524f"
		},
		"f317d87a-75e8-4c42-9da3-076ed1b8aa4f": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/BookApproval/ApprovedbyDepartmentManager.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvedbydepartmentmanager"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask6",
			"name": "Approve by Financial Audit Manager"
		},
		"dffb1e74-aab2-42b7-bbba-279be8bb4e25": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "Financial Audit Manager Approval Decision",
			"default": "b673f31f-3881-4fd4-97f8-8bc4cbb76d44"
		},
		"ce7578d5-4d9c-474a-b866-79b12899b14d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/BookApproval/History.js",
			"id": "scripttask6",
			"name": "Init History"
		},
		"8e6aaede-f59c-47fa-aeba-58339d23a45d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/BookApproval/History.js",
			"id": "scripttask7",
			"name": "Process Department Manager Decision"
		},
		"b9b6b276-18d9-4eee-a0eb-68ef2901edb3": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/BookApproval/History.js",
			"id": "scripttask8",
			"name": "Process Purchasing Manager Decision"
		},
		"3201c9e5-e24b-4ea1-a984-fa3f29550111": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/BookApproval/History.js",
			"id": "scripttask9",
			"name": "Process Financial Audit Manager Decision"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "ce7578d5-4d9c-474a-b866-79b12899b14d"
		},
		"d5f9e19b-4d7e-4b70-b81a-76284c03b25e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "No",
			"sourceRef": "7530569d-f604-4f77-bb13-0d8d421dfed0",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"de7c8122-32ea-49f0-8324-ba6789cf4213": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.Order.TotalPrice >= 1000}",
			"id": "sequenceflow5",
			"name": "Yes",
			"sourceRef": "dadbb7cf-4ee3-4235-8337-74f9d9dbad6c",
			"targetRef": "8e6aaede-f59c-47fa-aeba-58339d23a45d"
		},
		"96f71509-9162-4aee-be28-b267bcd4e024": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "Rejected",
			"sourceRef": "1d48a8bc-51d2-47f7-be97-7c086c24de24",
			"targetRef": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"1040eab8-e0e9-4f5e-91c0-57336c19de96": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask4.last.decision == \"approve\"}",
			"id": "sequenceflow19",
			"name": "Approved",
			"sourceRef": "1d48a8bc-51d2-47f7-be97-7c086c24de24",
			"targetRef": "786e3920-320b-4b2b-ba36-04f80379bcaf"
		},
		"b03fe07d-261e-4f4b-8799-9e0309cc08c3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.Order.TotalPrice >= 1000}",
			"id": "sequenceflow20",
			"name": "Yes",
			"sourceRef": "7530569d-f604-4f77-bb13-0d8d421dfed0",
			"targetRef": "dadbb7cf-4ee3-4235-8337-74f9d9dbad6c"
		},
		"45638d0e-a593-48bc-a967-ffa575710f8f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "786e3920-320b-4b2b-ba36-04f80379bcaf",
			"targetRef": "b9b6b276-18d9-4eee-a0eb-68ef2901edb3"
		},
		"b16c0387-68c0-4c07-b2db-a0249dab7cdf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask5.last.decision == \"approve\"}",
			"id": "sequenceflow24",
			"name": "Approved",
			"sourceRef": "9d7c7d6f-7c24-4585-8dab-bfbd0f238d42",
			"targetRef": "f317d87a-75e8-4c42-9da3-076ed1b8aa4f"
		},
		"a6bb1672-ba9d-4190-98d7-23561be9524f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "Rejected",
			"sourceRef": "9d7c7d6f-7c24-4585-8dab-bfbd0f238d42",
			"targetRef": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"0b11c02d-5c80-4163-b142-cc2cf7ff20db": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "f317d87a-75e8-4c42-9da3-076ed1b8aa4f",
			"targetRef": "3201c9e5-e24b-4ea1-a984-fa3f29550111"
		},
		"2d3802e6-6269-44f6-936c-36de5e04e27e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask6.last.decision == \"approve\"}",
			"id": "sequenceflow27",
			"name": "Approved",
			"sourceRef": "dffb1e74-aab2-42b7-bbba-279be8bb4e25",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"b673f31f-3881-4fd4-97f8-8bc4cbb76d44": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "Rejected",
			"sourceRef": "dffb1e74-aab2-42b7-bbba-279be8bb4e25",
			"targetRef": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"2a64f2f6-e9d9-4f70-9d83-dab129bf9fdb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "ce7578d5-4d9c-474a-b866-79b12899b14d",
			"targetRef": "7530569d-f604-4f77-bb13-0d8d421dfed0"
		},
		"c257d468-d68e-4a7a-b5ed-2ace7f6699f3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "8e6aaede-f59c-47fa-aeba-58339d23a45d",
			"targetRef": "1d48a8bc-51d2-47f7-be97-7c086c24de24"
		},
		"f66ebb4f-9ae1-40f3-91fe-e6f1a2c76e6b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "b9b6b276-18d9-4eee-a0eb-68ef2901edb3",
			"targetRef": "9d7c7d6f-7c24-4585-8dab-bfbd0f238d42"
		},
		"90b27457-4a13-406a-8a28-5ea389a18f09": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "3201c9e5-e24b-4ea1-a984-fa3f29550111",
			"targetRef": "dffb1e74-aab2-42b7-bbba-279be8bb4e25"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7df90097-d876-44b6-9cca-f1d7c4c514c2": {},
				"f5603041-6646-42bf-b61d-3a6d95456d2d": {},
				"c9e7e0b5-a7ca-466b-8df5-328d739fa057": {},
				"ec7d06c4-a01e-4169-a2d6-b0e6f733e5bd": {},
				"83ea8cc8-b9d7-4f86-b059-6dc4015764c3": {},
				"5f1b05cd-1f2c-4d31-9d46-2b23ebbb0c8b": {},
				"b5c0b283-0f97-4c78-980e-a92a88c4d25e": {},
				"316c284e-dc35-4f30-9e12-d9b68ba2799a": {},
				"62ae56ae-ab34-41ca-b1b8-e7dc7be510a2": {},
				"260ead01-62f6-44ff-a79b-bb5b26fba02d": {},
				"5afd729c-e5b2-4b07-8ac0-871e35f71b98": {},
				"f30be554-3013-49c0-be40-ce5c0dcd025a": {},
				"d8aa981b-6d40-4bb8-aea1-1c29febd3120": {},
				"65efeced-01ae-43a9-a8e1-1b862586b59d": {},
				"1bcc1d2d-14c1-49a7-a354-dc36e1d788c9": {},
				"d10f57de-a1c6-4fd7-8d79-5d97e470d0b8": {},
				"ba01f172-f659-4715-af2a-e0654fc58cc1": {},
				"9f86d868-3d54-415a-8925-e36938deb403": {},
				"5b4ddcd7-1065-4ea3-a1cc-023e746eba3c": {},
				"f6d8f10b-c0d7-41c7-89cc-729c08ef90c2": {},
				"3e24b000-f66a-40a1-8621-9192538cdc17": {},
				"921c39be-d6f7-4132-81a1-3faae7a23cfc": {},
				"67f9c8f5-d00e-4123-9c1f-3e27622cfc86": {},
				"d5cbb4ac-10c5-46bd-8096-8c9a7f5aea4a": {},
				"f9bf18e2-ca0f-4df0-bf62-90b8f38a01a7": {},
				"a4d5f61d-a5c5-444a-ad78-369633b11cd9": {},
				"e941e5c3-4067-4444-ba65-9648ecff7e09": {}
			}
		},
		"bd241edc-6e8d-46c1-8eb6-92255d6e0e72": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/BookApproval/Workflow1.1SampleStartPayload.json",
			"id": "default-start-context"
		},
		"4e0374e9-2d0e-4850-9c9a-023d15857fb5": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -183,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1950,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-167,42 -23.25,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "f6d8f10b-c0d7-41c7-89cc-729c08ef90c2",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"7df90097-d876-44b6-9cca-f1d7c4c514c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 104,
			"y": 21,
			"object": "7530569d-f604-4f77-bb13-0d8d421dfed0"
		},
		"f5603041-6646-42bf-b61d-3a6d95456d2d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1014.5,
			"y": 227.5,
			"width": 35,
			"height": 35,
			"object": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"c9e7e0b5-a7ca-466b-8df5-328d739fa057": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "125,21.5 125,-29 1967.5,-29 1967.5,25",
			"sourceSymbol": "7df90097-d876-44b6-9cca-f1d7c4c514c2",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d5f9e19b-4d7e-4b70-b81a-76284c03b25e"
		},
		"ec7d06c4-a01e-4169-a2d6-b0e6f733e5bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "254,42.203125 376.1875,42.203125",
			"sourceSymbol": "316c284e-dc35-4f30-9e12-d9b68ba2799a",
			"targetSymbol": "921c39be-d6f7-4132-81a1-3faae7a23cfc",
			"object": "de7c8122-32ea-49f0-8324-ba6789cf4213"
		},
		"83ea8cc8-b9d7-4f86-b059-6dc4015764c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 447.875,
			"y": 21.25,
			"object": "1d48a8bc-51d2-47f7-be97-7c086c24de24"
		},
		"5f1b05cd-1f2c-4d31-9d46-2b23ebbb0c8b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "468.9375,62.75 468.9375,246 1014.9375,246",
			"sourceSymbol": "83ea8cc8-b9d7-4f86-b059-6dc4015764c3",
			"targetSymbol": "f5603041-6646-42bf-b61d-3a6d95456d2d",
			"object": "96f71509-9162-4aee-be28-b267bcd4e024"
		},
		"b5c0b283-0f97-4c78-980e-a92a88c4d25e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "468.875,42.09375 687.5,42.09375",
			"sourceSymbol": "83ea8cc8-b9d7-4f86-b059-6dc4015764c3",
			"targetSymbol": "260ead01-62f6-44ff-a79b-bb5b26fba02d",
			"object": "1040eab8-e0e9-4f5e-91c0-57336c19de96"
		},
		"316c284e-dc35-4f30-9e12-d9b68ba2799a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 204,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "dadbb7cf-4ee3-4235-8337-74f9d9dbad6c"
		},
		"62ae56ae-ab34-41ca-b1b8-e7dc7be510a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "145.5,42 204.5,42",
			"sourceSymbol": "7df90097-d876-44b6-9cca-f1d7c4c514c2",
			"targetSymbol": "316c284e-dc35-4f30-9e12-d9b68ba2799a",
			"object": "b03fe07d-261e-4f4b-8799-9e0309cc08c3"
		},
		"260ead01-62f6-44ff-a79b-bb5b26fba02d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 687,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "786e3920-320b-4b2b-ba36-04f80379bcaf"
		},
		"5afd729c-e5b2-4b07-8ac0-871e35f71b98": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1010.5,
			"y": 21,
			"object": "9d7c7d6f-7c24-4585-8dab-bfbd0f238d42"
		},
		"f30be554-3013-49c0-be40-ce5c0dcd025a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "737,42 909.5,42",
			"sourceSymbol": "260ead01-62f6-44ff-a79b-bb5b26fba02d",
			"targetSymbol": "d5cbb4ac-10c5-46bd-8096-8c9a7f5aea4a",
			"object": "45638d0e-a593-48bc-a967-ffa575710f8f"
		},
		"d8aa981b-6d40-4bb8-aea1-1c29febd3120": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1045.5,41.75 1281.5,41.75",
			"sourceSymbol": "5afd729c-e5b2-4b07-8ac0-871e35f71b98",
			"targetSymbol": "1bcc1d2d-14c1-49a7-a354-dc36e1d788c9",
			"object": "b16c0387-68c0-4c07-b2db-a0249dab7cdf"
		},
		"65efeced-01ae-43a9-a8e1-1b862586b59d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1031.75,62.5 1031.75,228",
			"sourceSymbol": "5afd729c-e5b2-4b07-8ac0-871e35f71b98",
			"targetSymbol": "f5603041-6646-42bf-b61d-3a6d95456d2d",
			"object": "a6bb1672-ba9d-4190-98d7-23561be9524f"
		},
		"1bcc1d2d-14c1-49a7-a354-dc36e1d788c9": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1281,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "f317d87a-75e8-4c42-9da3-076ed1b8aa4f"
		},
		"d10f57de-a1c6-4fd7-8d79-5d97e470d0b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1612.5,
			"y": 21,
			"object": "dffb1e74-aab2-42b7-bbba-279be8bb4e25"
		},
		"ba01f172-f659-4715-af2a-e0654fc58cc1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1331,42.25 1497,42.25",
			"sourceSymbol": "1bcc1d2d-14c1-49a7-a354-dc36e1d788c9",
			"targetSymbol": "a4d5f61d-a5c5-444a-ad78-369633b11cd9",
			"object": "0b11c02d-5c80-4163-b142-cc2cf7ff20db"
		},
		"9f86d868-3d54-415a-8925-e36938deb403": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1654,42 1950.5,42",
			"sourceSymbol": "d10f57de-a1c6-4fd7-8d79-5d97e470d0b8",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "2d3802e6-6269-44f6-936c-36de5e04e27e"
		},
		"5b4ddcd7-1065-4ea3-a1cc-023e746eba3c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1633.5,62.5 1633.5,245 1049,245",
			"sourceSymbol": "d10f57de-a1c6-4fd7-8d79-5d97e470d0b8",
			"targetSymbol": "f5603041-6646-42bf-b61d-3a6d95456d2d",
			"object": "b673f31f-3881-4fd4-97f8-8bc4cbb76d44"
		},
		"f6d8f10b-c0d7-41c7-89cc-729c08ef90c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -73.25,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "ce7578d5-4d9c-474a-b866-79b12899b14d"
		},
		"3e24b000-f66a-40a1-8621-9192538cdc17": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-23.25,42 125,42",
			"sourceSymbol": "f6d8f10b-c0d7-41c7-89cc-729c08ef90c2",
			"targetSymbol": "7df90097-d876-44b6-9cca-f1d7c4c514c2",
			"object": "2a64f2f6-e9d9-4f70-9d83-dab129bf9fdb"
		},
		"921c39be-d6f7-4132-81a1-3faae7a23cfc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 326.1875,
			"y": 12.40625,
			"width": 100,
			"height": 60,
			"object": "8e6aaede-f59c-47fa-aeba-58339d23a45d"
		},
		"67f9c8f5-d00e-4123-9c1f-3e27622cfc86": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "376.1875,42.328125 468.875,42.328125",
			"sourceSymbol": "921c39be-d6f7-4132-81a1-3faae7a23cfc",
			"targetSymbol": "83ea8cc8-b9d7-4f86-b059-6dc4015764c3",
			"object": "c257d468-d68e-4a7a-b5ed-2ace7f6699f3"
		},
		"d5cbb4ac-10c5-46bd-8096-8c9a7f5aea4a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 859.5,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "b9b6b276-18d9-4eee-a0eb-68ef2901edb3"
		},
		"f9bf18e2-ca0f-4df0-bf62-90b8f38a01a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "909.5,42 1031.5,42",
			"sourceSymbol": "d5cbb4ac-10c5-46bd-8096-8c9a7f5aea4a",
			"targetSymbol": "5afd729c-e5b2-4b07-8ac0-871e35f71b98",
			"object": "f66ebb4f-9ae1-40f3-91fe-e6f1a2c76e6b"
		},
		"a4d5f61d-a5c5-444a-ad78-369633b11cd9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1447,
			"y": 12.5,
			"width": 100,
			"height": 60,
			"object": "3201c9e5-e24b-4ea1-a984-fa3f29550111"
		},
		"e941e5c3-4067-4444-ba65-9648ecff7e09": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1497,42.25 1633.5,42.25",
			"sourceSymbol": "a4d5f61d-a5c5-444a-ad78-369633b11cd9",
			"targetSymbol": "d10f57de-a1c6-4fd7-8d79-5d97e470d0b8",
			"object": "90b27457-4a13-406a-8a28-5ea389a18f09"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 32,
			"startevent": 1,
			"endevent": 2,
			"usertask": 6,
			"scripttask": 9,
			"exclusivegateway": 6
		}
	}
}