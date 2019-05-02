<html>
    <!--

        Licensed to the Apache Software Foundation (ASF) under one or more
        contributor license agreements.  See the NOTICE file distributed with
        this work for additional information regarding copyright ownership.
        The ASF licenses this file to You under the Apache License, Version 2.0
        (the "License"); you may not use this file except in compliance with
        the License.  You may obtain a copy of the License at

           http://www.apache.org/licenses/LICENSE-2.0

        Unless required by applicable law or agreed to in writing, software
        distributed under the License is distributed on an "AS IS" BASIS,
        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
        See the License for the specific language governing permissions and
        limitations under the License.
    -->
<head>
	<script type="text/javascript" src="./javascript/jquery-3.4.0.js"></script>
	<script type="text/javascript" src="./javascript/contextRequest.js"></script>


	<script type="text/javascript">
		// ######################################################################
		// ######################################################################
		// Exercise 1: Send an event to Unomi when the awesome button is clicked
		// ######################################################################
		// ######################################################################
		$( "#awesome-button" ).click(function() {
			var payload = {
				source: {
					"itemType":"page",
					"scope":"${renderContext.site.siteKey}",
					"itemId":"${renderContext.mainResource.node.identifier}"
				},
				"events":[
					{
						"eventType": "clickedAwesomeButton",
						"scope": "digitall",
						"timeStamp": "${timestampNow}"
					}],
				"requiredProfileProperties":["awesomeButtonClickNb"]
			};
			console.log( "Click on the awesome button detected. What should we do next?" );
			contextRequest(function() {}, function() {}, payload);
		});
	</script>


	<title>Exercise 1</title>
</head>
<body>
	<h1>Exercise 1</h1>

	<div class="awesome-button-container">
		<h2 class="awesome-event-button-label">This is the awesome Event Button!</h2>
		<p class="awesome-event-button-label">Click it to send events to Unomi.</p>
		<button id="awesome-button">Awesome Button</button>
	</div>

</body>



