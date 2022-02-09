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
				"21e1c7d6-193f-4c4b-b30d-2ddb9f7f6a3e": {
					"name": "Approved by Department Manager"
				},
				"1d48a8bc-51d2-47f7-be97-7c086c24de24": {
					"name": "Department Manager Approval Decision"
				},
				"542511b6-e6ca-47e4-9c70-819d39613a1a": {
					"name": "Approved by Purchasing Manager"
				},
				"030ef3f7-9c30-4744-b9d7-aa950cf083ee": {
					"name": "Purchasing Manager Approval Decision"
				},
				"3bc91dbe-610b-4968-97f7-7add7960a07a": {
					"name": "Approved by Financial Audit Manager"
				},
				"696e3260-c501-4f56-a869-ee216b692f3a": {
					"name": "Financial Audit Manager Approval Decision"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"25ee9dae-878e-476a-90f8-31a1a73dbe49": {
					"name": "Yes"
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
				"571d54bd-1a4e-46a6-8389-14e2c6585636": {
					"name": "Accepted"
				},
				"10bc4db1-ec22-41f9-9432-e8d526d7c8c7": {
					"name": "SequenceFlow12"
				},
				"d34a3fdb-b380-45f2-b917-525e288e153e": {
					"name": "Rejected"
				},
				"7d8026c0-3dc4-4f33-9ba6-67e2d26e3280": {
					"name": "Accepted"
				},
				"db68c519-1dc1-4e7a-9ef6-de635b386e66": {
					"name": "SequenceFlow15"
				},
				"0ac68c74-ac60-4f15-afcf-6bc07acf3fed": {
					"name": "Accepted"
				},
				"36da37b3-14b4-4156-87a0-e688835db55a": {
					"name": "Rejected"
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
		"21e1c7d6-193f-4c4b-b30d-2ddb9f7f6a3e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for  \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/BookApproval/ApprovalDepartmentManagerForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvaldepartmentmanagerform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approved by Department Manager"
		},
		"1d48a8bc-51d2-47f7-be97-7c086c24de24": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Department Manager Approval Decision",
			"default": "96f71509-9162-4aee-be28-b267bcd4e024"
		},
		"542511b6-e6ca-47e4-9c70-819d39613a1a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for  \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/BookApproval/ApprovallPurchasingManager.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvallpurchasingmanager"
			}, {
				"key": "formRevision",
				"value": "1.1"
			}],
			"id": "usertask2",
			"name": "Approved by Purchasing Manager"
		},
		"030ef3f7-9c30-4744-b9d7-aa950cf083ee": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Purchasing Manager Approval Decision",
			"default": "d34a3fdb-b380-45f2-b917-525e288e153e"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "7530569d-f604-4f77-bb13-0d8d421dfed0"
		},
		"25ee9dae-878e-476a-90f8-31a1a73dbe49": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.Order.status}",
			"id": "sequenceflow3",
			"name": "Yes",
			"sourceRef": "21e1c7d6-193f-4c4b-b30d-2ddb9f7f6a3e",
			"targetRef": "1d48a8bc-51d2-47f7-be97-7c086c24de24"
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
			"sourceRef": "7530569d-f604-4f77-bb13-0d8d421dfed0",
			"targetRef": "21e1c7d6-193f-4c4b-b30d-2ddb9f7f6a3e"
		},
		"96f71509-9162-4aee-be28-b267bcd4e024": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "Rejected",
			"sourceRef": "1d48a8bc-51d2-47f7-be97-7c086c24de24",
			"targetRef": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"571d54bd-1a4e-46a6-8389-14e2c6585636": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow9",
			"name": "Accepted",
			"sourceRef": "1d48a8bc-51d2-47f7-be97-7c086c24de24",
			"targetRef": "542511b6-e6ca-47e4-9c70-819d39613a1a"
		},
		"10bc4db1-ec22-41f9-9432-e8d526d7c8c7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "542511b6-e6ca-47e4-9c70-819d39613a1a",
			"targetRef": "030ef3f7-9c30-4744-b9d7-aa950cf083ee"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7df90097-d876-44b6-9cca-f1d7c4c514c2": {},
				"3e6c2576-ec5b-4bcc-a40f-fa19df1c3aba": {},
				"f5603041-6646-42bf-b61d-3a6d95456d2d": {},
				"c9e7e0b5-a7ca-466b-8df5-328d739fa057": {},
				"f0b9e2e3-1dc2-4091-b8f3-d32ffb1cf8bc": {},
				"ec7d06c4-a01e-4169-a2d6-b0e6f733e5bd": {},
				"83ea8cc8-b9d7-4f86-b059-6dc4015764c3": {},
				"5f1b05cd-1f2c-4d31-9d46-2b23ebbb0c8b": {},
				"c428bce7-6410-4242-8846-02cae8242524": {},
				"9210ede3-3e20-46c1-9126-4d0fa94f22bd": {},
				"ee795610-6002-41fc-a975-db7d92b33ca6": {},
				"2164766e-91ee-4df3-ac2c-31454ea9ef20": {},
				"d340ab17-e409-4fc6-af84-6dfdf2ec4fa7": {},
				"eadf19ec-b276-4b21-b73d-15882e306d7d": {},
				"bf0d9b78-37a3-445d-80b2-b3cde01ae2fb": {},
				"c4336de9-43e0-4216-a8e0-f8fa2bec5b0c": {},
				"be970a5b-6761-4f49-9de8-9b461a59e0f6": {},
				"accdb52a-949f-4c80-94ef-943368263df1": {},
				"9d2a68f1-b1c4-4521-9e4c-afe44eccb41a": {}
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
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1077,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "28,42 125,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7df90097-d876-44b6-9cca-f1d7c4c514c2",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"7df90097-d876-44b6-9cca-f1d7c4c514c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 104,
			"y": 21,
			"object": "7530569d-f604-4f77-bb13-0d8d421dfed0"
		},
		"3e6c2576-ec5b-4bcc-a40f-fa19df1c3aba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "245,42.125 396.875,42.125",
			"sourceSymbol": "f0b9e2e3-1dc2-4091-b8f3-d32ffb1cf8bc",
			"targetSymbol": "83ea8cc8-b9d7-4f86-b059-6dc4015764c3",
			"object": "25ee9dae-878e-476a-90f8-31a1a73dbe49"
		},
		"f5603041-6646-42bf-b61d-3a6d95456d2d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 500.5,
			"y": 230.5,
			"width": 35,
			"height": 35,
			"object": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"c9e7e0b5-a7ca-466b-8df5-328d739fa057": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "125,21.5 125,-29 1094.5,-29 1094.5,25",
			"sourceSymbol": "7df90097-d876-44b6-9cca-f1d7c4c514c2",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d5f9e19b-4d7e-4b70-b81a-76284c03b25e"
		},
		"f0b9e2e3-1dc2-4091-b8f3-d32ffb1cf8bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 195,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "21e1c7d6-193f-4c4b-b30d-2ddb9f7f6a3e"
		},
		"ec7d06c4-a01e-4169-a2d6-b0e6f733e5bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "125,42 195.5,42",
			"sourceSymbol": "7df90097-d876-44b6-9cca-f1d7c4c514c2",
			"targetSymbol": "f0b9e2e3-1dc2-4091-b8f3-d32ffb1cf8bc",
			"object": "de7c8122-32ea-49f0-8324-ba6789cf4213"
		},
		"83ea8cc8-b9d7-4f86-b059-6dc4015764c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 375.875,
			"y": 21.25,
			"object": "1d48a8bc-51d2-47f7-be97-7c086c24de24"
		},
		"5f1b05cd-1f2c-4d31-9d46-2b23ebbb0c8b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "396.9375,62.75 396.9375,249 500.9375,249",
			"sourceSymbol": "83ea8cc8-b9d7-4f86-b059-6dc4015764c3",
			"targetSymbol": "f5603041-6646-42bf-b61d-3a6d95456d2d",
			"object": "96f71509-9162-4aee-be28-b267bcd4e024"
		},
		"c428bce7-6410-4242-8846-02cae8242524": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "396.875,42.0625 506.5,42.0625",
			"sourceSymbol": "83ea8cc8-b9d7-4f86-b059-6dc4015764c3",
			"targetSymbol": "9210ede3-3e20-46c1-9126-4d0fa94f22bd",
			"object": "571d54bd-1a4e-46a6-8389-14e2c6585636"
		},
		"9210ede3-3e20-46c1-9126-4d0fa94f22bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 506,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "542511b6-e6ca-47e4-9c70-819d39613a1a"
		},
		"ee795610-6002-41fc-a975-db7d92b33ca6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 652.5,
			"y": 21,
			"object": "030ef3f7-9c30-4744-b9d7-aa950cf083ee"
		},
		"2164766e-91ee-4df3-ac2c-31454ea9ef20": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "556,42 673.5,42",
			"sourceSymbol": "9210ede3-3e20-46c1-9126-4d0fa94f22bd",
			"targetSymbol": "ee795610-6002-41fc-a975-db7d92b33ca6",
			"object": "10bc4db1-ec22-41f9-9432-e8d526d7c8c7"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 17,
			"startevent": 1,
			"endevent": 2,
			"usertask": 3,
			"scripttask": 3,
			"exclusivegateway": 4
		},
		"d34a3fdb-b380-45f2-b917-525e288e153e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "Rejected",
			"sourceRef": "030ef3f7-9c30-4744-b9d7-aa950cf083ee",
			"targetRef": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"d340ab17-e409-4fc6-af84-6dfdf2ec4fa7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "673.5,62.5 673.5,146.75 518,146.75 518,231",
			"sourceSymbol": "ee795610-6002-41fc-a975-db7d92b33ca6",
			"targetSymbol": "f5603041-6646-42bf-b61d-3a6d95456d2d",
			"object": "d34a3fdb-b380-45f2-b917-525e288e153e"
		},
		"7d8026c0-3dc4-4f33-9ba6-67e2d26e3280": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision == \"approve\"}",
			"id": "sequenceflow14",
			"name": "Accepted",
			"sourceRef": "030ef3f7-9c30-4744-b9d7-aa950cf083ee",
			"targetRef": "3bc91dbe-610b-4968-97f7-7add7960a07a"
		},
		"eadf19ec-b276-4b21-b73d-15882e306d7d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "694,42 772.5,42",
			"sourceSymbol": "ee795610-6002-41fc-a975-db7d92b33ca6",
			"targetSymbol": "bf0d9b78-37a3-445d-80b2-b3cde01ae2fb",
			"object": "7d8026c0-3dc4-4f33-9ba6-67e2d26e3280"
		},
		"3bc91dbe-610b-4968-97f7-7add7960a07a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for  \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/BookApproval/ApprovallFinancialAuditManager.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvallfinancialauditmanager"
			}, {
				"key": "formRevision",
				"value": "1.2"
			}],
			"id": "usertask3",
			"name": "Approved by Financial Audit Manager"
		},
		"bf0d9b78-37a3-445d-80b2-b3cde01ae2fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 772,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "3bc91dbe-610b-4968-97f7-7add7960a07a"
		},
		"696e3260-c501-4f56-a869-ee216b692f3a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Financial Audit Manager Approval Decision",
			"default": "36da37b3-14b4-4156-87a0-e688835db55a"
		},
		"c4336de9-43e0-4216-a8e0-f8fa2bec5b0c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 918.5,
			"y": 21,
			"object": "696e3260-c501-4f56-a869-ee216b692f3a"
		},
		"db68c519-1dc1-4e7a-9ef6-de635b386e66": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "3bc91dbe-610b-4968-97f7-7add7960a07a",
			"targetRef": "696e3260-c501-4f56-a869-ee216b692f3a"
		},
		"be970a5b-6761-4f49-9de8-9b461a59e0f6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "822,42 939.5,42",
			"sourceSymbol": "bf0d9b78-37a3-445d-80b2-b3cde01ae2fb",
			"targetSymbol": "c4336de9-43e0-4216-a8e0-f8fa2bec5b0c",
			"object": "db68c519-1dc1-4e7a-9ef6-de635b386e66"
		},
		"0ac68c74-ac60-4f15-afcf-6bc07acf3fed": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision == \"approve\"}",
			"id": "sequenceflow16",
			"name": "Accepted",
			"sourceRef": "696e3260-c501-4f56-a869-ee216b692f3a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"accdb52a-949f-4c80-94ef-943368263df1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "960,42 1077.5,42",
			"sourceSymbol": "c4336de9-43e0-4216-a8e0-f8fa2bec5b0c",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0ac68c74-ac60-4f15-afcf-6bc07acf3fed"
		},
		"36da37b3-14b4-4156-87a0-e688835db55a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "Rejected",
			"sourceRef": "696e3260-c501-4f56-a869-ee216b692f3a",
			"targetRef": "c87f7787-d573-4f33-a003-e4a9f3371a18"
		},
		"9d2a68f1-b1c4-4521-9e4c-afe44eccb41a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "939.5,62.5 939.5,248 535,248",
			"sourceSymbol": "c4336de9-43e0-4216-a8e0-f8fa2bec5b0c",
			"targetSymbol": "f5603041-6646-42bf-b61d-3a6d95456d2d",
			"object": "36da37b3-14b4-4156-87a0-e688835db55a"
		}
	}
}