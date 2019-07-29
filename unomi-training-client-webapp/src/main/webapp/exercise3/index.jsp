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
	<jsp:include page="../head.jspf"></jsp:include>

	<title>Exercise 3</title>
</head>
<body>
	<jsp:include page="../header.jspf"></jsp:include>
	<main>
		<div class="container-fluid product pt-5 pb-5 mx-auto">
			<div class="row pt-5 pb-5">
				<div class="container">
					<div class="col pt-5 mx-auto text-left">

						<h1>Exercise 3</h1>


						<textarea id="payload" rows="14" cols="50">
{
	"source": {
		"itemType":"page",
		"scope":"unomiTraining",
		"itemId":"1234"
	},"events":[
		{
			"eventType": "clickedAwesomeButton",
			"scope": "digitall"
		}],
	"requiredProfileProperties":["*"],
	"requireSegments": true
}
						</textarea>


						</div>
					<h2 class="awesome-event-button-label">This is the awesome Event Button!</h2>
					<p class="awesome-event-button-label">Click it to send events to Unomi.</p>
						<button onclick="callUnomi()">Awesome Button</button>


					<h3>Unomi Response</h3>
						<div class="response awesome-button-container">
							<pre id="unomiResponse"></pre>
						</div>


						<script type="text/javascript">
							function callUnomi(){
								var payload = $("#payload")[0].value.replace(/\s+/g, '');
								contextRequest(displayResponse, displayError, JSON.parse(payload));
							}
							function displayResponse(response){
								$("#unomiResponse").text(JSON.stringify(response, undefined, 2));
							}
							function displayError(response){
								$("#unomiResponse").text("Error");
							};
						</script>
					</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>



