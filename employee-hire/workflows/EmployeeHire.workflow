{
	"contents": {
		"7c03aa10-3563-4827-8e1a-491c5c613972": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "mygo.hr.employeehire",
			"subject": "EmployeeHire",
			"name": "EmployeeHire",
			"documentation": "Employee Hire Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"be510ca8-0d1d-4fb1-bdcd-f9c1e55e9962": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"4eb20d52-dd72-4dda-bfc6-cc614b633f94": {
					"name": "EmployeeTaskUI"
				},
				"d5492add-54ba-4426-9b4e-382e6afef174": {
					"name": "CheckSubmission"
				},
				"20cc7b2d-9568-4621-b8a1-c6a8bea2b212": {
					"name": "Request Approval "
				},
				"9ecd34bb-972f-4463-a160-fed9acd0ab74": {
					"name": "ExclusiveGateway2"
				},
				"09f427e1-4973-4225-a8b2-098c95e8d264": {
					"name": "Approval"
				},
				"733241fe-9541-4df5-89b2-d81bd5d0ef05": {
					"name": "Rejection"
				},
				"fae3f02e-9391-4412-b123-f4bf84a89188": {
					"name": "Change Context for Approval"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6434ad69-c9bc-45ed-9066-bd96a890e202": {
					"name": "SequenceFlow2"
				},
				"ca7ac0a2-5fc6-4697-b485-ca10bd53d9bc": {
					"name": "SequenceFlow3"
				},
				"1b8692b3-fa29-4fcf-a1e4-3f2be542fd1e": {
					"name": "SequenceFlow4"
				},
				"01f15cca-e152-4efe-8520-478b314ce66a": {
					"name": "SequenceFlow5"
				},
				"db5239f1-28ff-4944-8493-87fbceb1b450": {
					"name": "SequenceFlow6"
				},
				"2d1102db-48ae-4e9c-9bac-046e370a3c31": {
					"name": "SequenceFlow9"
				},
				"27d2c427-deb3-49e8-8949-87bed28976c6": {
					"name": "SequenceFlow10"
				},
				"594cbae4-29c2-4927-9939-c4c987ccf657": {
					"name": "SequenceFlow11"
				},
				"a844cd7b-98d2-4de3-9750-cf12c74e83d3": {
					"name": "SequenceFlow14"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"07244f7d-c558-4548-8ada-a8d18f43301a": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"be510ca8-0d1d-4fb1-bdcd-f9c1e55e9962": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"d4375bc4-dc8b-4fa6-a289-7b5d43e8105a": {}
			}
		},
		"4eb20d52-dd72-4dda-bfc6-cc614b633f94": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Provide the resource budget information",
			"description": "Provide the resource budget information",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://emprouting.mygohremployeebudget/mygo.hr.employeebudget",
			"recipientUsers": "${info.startedBy}",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "EmployeeTaskUI",
			"documentation": "Custom UI5 app for employee form data"
		},
		"d5492add-54ba-4426-9b4e-382e6afef174": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "CheckSubmission",
			"default": "ca7ac0a2-5fc6-4697-b485-ca10bd53d9bc"
		},
		"20cc7b2d-9568-4621-b8a1-c6a8bea2b212": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for Approval of Candidate ${context.name}",
			"description": "Hello,\n\nA new request for approval of candidate.\nRequest for Approval of Candidate ${context.name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/EmployeeHire/employeeDetasils.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "employeedetasils"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Request Approval "
		},
		"9ecd34bb-972f-4463-a160-fed9acd0ab74": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "27d2c427-deb3-49e8-8949-87bed28976c6"
		},
		"09f427e1-4973-4225-a8b2-098c95e8d264": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "Approval",
			"mailDefinitionRef": "a989ca2c-884a-43f2-9583-c4348777b96f"
		},
		"733241fe-9541-4df5-89b2-d81bd5d0ef05": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Rejection",
			"mailDefinitionRef": "f1aba083-ee32-43a2-844e-91f7e0f5d72b"
		},
		"fae3f02e-9391-4412-b123-f4bf84a89188": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/EmployeeHire/changeApprovalStatus.js",
			"id": "scripttask1",
			"name": "Change Context for Approval"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "4eb20d52-dd72-4dda-bfc6-cc614b633f94"
		},
		"6434ad69-c9bc-45ed-9066-bd96a890e202": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "4eb20d52-dd72-4dda-bfc6-cc614b633f94",
			"targetRef": "d5492add-54ba-4426-9b4e-382e6afef174"
		},
		"ca7ac0a2-5fc6-4697-b485-ca10bd53d9bc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "d5492add-54ba-4426-9b4e-382e6afef174",
			"targetRef": "20cc7b2d-9568-4621-b8a1-c6a8bea2b212"
		},
		"1b8692b3-fa29-4fcf-a1e4-3f2be542fd1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "20cc7b2d-9568-4621-b8a1-c6a8bea2b212",
			"targetRef": "fae3f02e-9391-4412-b123-f4bf84a89188"
		},
		"01f15cca-e152-4efe-8520-478b314ce66a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.submit1 == true}",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "d5492add-54ba-4426-9b4e-382e6afef174",
			"targetRef": "be510ca8-0d1d-4fb1-bdcd-f9c1e55e9962"
		},
		"db5239f1-28ff-4944-8493-87fbceb1b450": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == true }",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "9ecd34bb-972f-4463-a160-fed9acd0ab74",
			"targetRef": "09f427e1-4973-4225-a8b2-098c95e8d264"
		},
		"2d1102db-48ae-4e9c-9bac-046e370a3c31": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "09f427e1-4973-4225-a8b2-098c95e8d264",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"27d2c427-deb3-49e8-8949-87bed28976c6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "9ecd34bb-972f-4463-a160-fed9acd0ab74",
			"targetRef": "733241fe-9541-4df5-89b2-d81bd5d0ef05"
		},
		"594cbae4-29c2-4927-9939-c4c987ccf657": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "733241fe-9541-4df5-89b2-d81bd5d0ef05",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"a844cd7b-98d2-4de3-9750-cf12c74e83d3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "fae3f02e-9391-4412-b123-f4bf84a89188",
			"targetRef": "9ecd34bb-972f-4463-a160-fed9acd0ab74"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"444fb81e-851b-4821-aa3a-44c16842e7b7": {},
				"f613c65b-f3ec-41d4-bb07-8626ad73d9a0": {},
				"85a743a1-2c69-4aaf-a3e2-ee560ad9de2b": {},
				"87ed025f-fbfd-4b8c-919b-c2c538fa5608": {},
				"aac960f0-8850-40a1-bae8-62d384b26750": {},
				"3a8814a4-207e-4be9-864b-9d93af930d52": {},
				"eb0616e3-f71d-4dd1-aabe-e64bd70d4768": {},
				"09e25cfa-eb32-490e-bbf8-6dcee9b39585": {},
				"0c8df7f7-88af-4a1d-a4ad-86b1ad6502fc": {},
				"29c87238-a419-4b6f-b4fc-a479632a3c59": {},
				"bae819bc-eab5-4aaf-ac14-6e17f7971d28": {},
				"bb4e174f-65b9-446a-969b-35e4b3dd04da": {},
				"af025512-cd56-4e4b-9cc3-9f67a0dffa66": {},
				"d28ee6c7-a101-426f-aa78-fee309b23e85": {},
				"4256a1ca-1d75-4d15-bf75-51c4163006a6": {},
				"6d4fccb6-7f18-40a3-aee9-093950e98428": {},
				"fe6b582e-1954-49ad-97b8-67b5467d8c84": {}
			}
		},
		"07244f7d-c558-4548-8ada-a8d18f43301a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/EmployeeHire/employeeData.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 121,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 119.5,
			"y": 797.9999952316284,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,44 137,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "444fb81e-851b-4821-aa3a-44c16842e7b7",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"444fb81e-851b-4821-aa3a-44c16842e7b7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 87,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "4eb20d52-dd72-4dda-bfc6-cc614b633f94"
		},
		"f613c65b-f3ec-41d4-bb07-8626ad73d9a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,154 137,204",
			"sourceSymbol": "444fb81e-851b-4821-aa3a-44c16842e7b7",
			"targetSymbol": "85a743a1-2c69-4aaf-a3e2-ee560ad9de2b",
			"object": "6434ad69-c9bc-45ed-9066-bd96a890e202"
		},
		"85a743a1-2c69-4aaf-a3e2-ee560ad9de2b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116,
			"y": 204,
			"object": "d5492add-54ba-4426-9b4e-382e6afef174"
		},
		"87ed025f-fbfd-4b8c-919b-c2c538fa5608": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,246 137,280.99999940395355 94.5,280.99999940395355 94.5,315.9999988079071",
			"sourceSymbol": "85a743a1-2c69-4aaf-a3e2-ee560ad9de2b",
			"targetSymbol": "aac960f0-8850-40a1-bae8-62d384b26750",
			"object": "ca7ac0a2-5fc6-4697-b485-ca10bd53d9bc"
		},
		"aac960f0-8850-40a1-bae8-62d384b26750": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 44.5,
			"y": 315.9999988079071,
			"width": 100,
			"height": 60,
			"object": "20cc7b2d-9568-4621-b8a1-c6a8bea2b212"
		},
		"3a8814a4-207e-4be9-864b-9d93af930d52": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "94.5,375.9999988079071 94.5,410.99999821186066 137,410.99999821186066 137,445.9999976158142",
			"sourceSymbol": "aac960f0-8850-40a1-bae8-62d384b26750",
			"targetSymbol": "6d4fccb6-7f18-40a3-aee9-093950e98428",
			"object": "1b8692b3-fa29-4fcf-a1e4-3f2be542fd1e"
		},
		"eb0616e3-f71d-4dd1-aabe-e64bd70d4768": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 194.5,
			"y": 315.9999988079071,
			"width": 35,
			"height": 35,
			"object": "be510ca8-0d1d-4fb1-bdcd-f9c1e55e9962"
		},
		"09e25cfa-eb32-490e-bbf8-6dcee9b39585": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,246 137,280.99999940395355 212,280.99999940395355 212,315.9999988079071",
			"sourceSymbol": "85a743a1-2c69-4aaf-a3e2-ee560ad9de2b",
			"targetSymbol": "eb0616e3-f71d-4dd1-aabe-e64bd70d4768",
			"object": "01f15cca-e152-4efe-8520-478b314ce66a"
		},
		"0c8df7f7-88af-4a1d-a4ad-86b1ad6502fc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116,
			"y": 555.9999976158142,
			"object": "9ecd34bb-972f-4463-a160-fed9acd0ab74"
		},
		"29c87238-a419-4b6f-b4fc-a479632a3c59": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,597.9999976158142 137,632.9999970197678 62,632.9999970197678 62,667.9999964237213",
			"sourceSymbol": "0c8df7f7-88af-4a1d-a4ad-86b1ad6502fc",
			"targetSymbol": "bae819bc-eab5-4aaf-ac14-6e17f7971d28",
			"object": "db5239f1-28ff-4944-8493-87fbceb1b450"
		},
		"bae819bc-eab5-4aaf-ac14-6e17f7971d28": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 12,
			"y": 667.9999964237213,
			"width": 100,
			"height": 60,
			"object": "09f427e1-4973-4225-a8b2-098c95e8d264"
		},
		"bb4e174f-65b9-446a-969b-35e4b3dd04da": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 162,
			"y": 667.9999964237213,
			"width": 100,
			"height": 60,
			"object": "733241fe-9541-4df5-89b2-d81bd5d0ef05"
		},
		"af025512-cd56-4e4b-9cc3-9f67a0dffa66": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,727.9999964237213 62,762.9999958276749 137,762.9999958276749 137,797.9999952316284",
			"sourceSymbol": "bae819bc-eab5-4aaf-ac14-6e17f7971d28",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "2d1102db-48ae-4e9c-9bac-046e370a3c31"
		},
		"d28ee6c7-a101-426f-aa78-fee309b23e85": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,597.9999976158142 137,632.9999970197678 212,632.9999970197678 212,667.9999964237213",
			"sourceSymbol": "0c8df7f7-88af-4a1d-a4ad-86b1ad6502fc",
			"targetSymbol": "bb4e174f-65b9-446a-969b-35e4b3dd04da",
			"object": "27d2c427-deb3-49e8-8949-87bed28976c6"
		},
		"4256a1ca-1d75-4d15-bf75-51c4163006a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "212,727.9999964237213 212,762.9999958276749 137,762.9999958276749 137,797.9999952316284",
			"sourceSymbol": "bb4e174f-65b9-446a-969b-35e4b3dd04da",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "594cbae4-29c2-4927-9939-c4c987ccf657"
		},
		"6d4fccb6-7f18-40a3-aee9-093950e98428": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 445.9999976158142,
			"width": 100,
			"height": 60,
			"object": "fae3f02e-9391-4412-b123-f4bf84a89188"
		},
		"fe6b582e-1954-49ad-97b8-67b5467d8c84": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,505.9999976158142 137,555.9999976158142",
			"sourceSymbol": "6d4fccb6-7f18-40a3-aee9-093950e98428",
			"targetSymbol": "0c8df7f7-88af-4a1d-a4ad-86b1ad6502fc",
			"object": "a844cd7b-98d2-4de3-9750-cf12c74e83d3"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"maildefinition": 2,
			"sequenceflow": 14,
			"startevent": 1,
			"endevent": 2,
			"usertask": 2,
			"servicetask": 2,
			"scripttask": 1,
			"mailtask": 2,
			"exclusivegateway": 2
		},
		"d4375bc4-dc8b-4fa6-a289-7b5d43e8105a": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"a989ca2c-884a-43f2-9583-c4348777b96f": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.email}",
			"subject": "Recruitment Request has been Approved",
			"text": "Recruitment Request has been Approved",
			"id": "maildefinition1"
		},
		"f1aba083-ee32-43a2-844e-91f7e0f5d72b": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.email}",
			"subject": "Recruitment Request has been Rejected",
			"text": "Recruitment Request has been Rejected",
			"id": "maildefinition2"
		}
	}
}