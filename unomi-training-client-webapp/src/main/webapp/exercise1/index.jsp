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




	<title>Exercise 1</title>
</head>
<body>
	<h1>Exercise 1</h1>

	<p>
		Unomi profile properties are declared here:
		<a href="https://github.com/apache/unomi/tree/unomi-root-1.3.0-incubating/services/src/main/resources/META-INF/cxs/properties/profiles">
			https://github.com/apache/unomi/tree/unomi-root-1.3.0-incubating/services/src/main/resources/META-INF/cxs/properties/profiles
		</a>
	</p>

	<p>
		Deploy a new "basic" property "awesomeButtonNumberOfClick" which is an integer by building and deploy the Unomi plugin.
	</p>
	<p>
		The AJAX response should contain the newly created property
	</p>

	<script type="text/javascript">
		// ################################################
		// ################################################
		// Exercise 0: sending a simple ajax call to Unomi
		// ################################################
		// ################################################

		var payload = {
			source: {
				"itemType":"page",
				"scope":"unomiTraining",
				"itemId":"1234"
			}
			,"requiredProfileProperties":["*"],
			"requiredSessionProperties":["*"],
			"requireSegments":true
		};
		contextRequest(function() {}, function() {}, payload);

	</script>

</body>



