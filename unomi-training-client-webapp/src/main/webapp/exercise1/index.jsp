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
	<title>Exercise 1</title>
</head>
<body>
<jsp:include page="../header.jspf"></jsp:include>
<div class="container-fluid product pt-5 pb-5 mx-auto">
	<div class="row pt-5 pb-5">
		<div class="container">
			<div class="col pt-5 mx-auto text-left">
				<h1>Exercise 1</h1>

				<p>
					Unomi profile properties are declared here:
					<a href="https://github.com/apache/unomi/tree/unomi-root-1.3.0-incubating/services/src/main/resources/META-INF/cxs/properties/profiles">
						https://github.com/apache/unomi/tree/unomi-root-1.3.0-incubating/services/src/main/resources/META-INF/cxs/properties/profiles
					</a>
				</p>

				<p>
					You can view all those properties under
					<a href="http://localhost:8182/cxs/profiles/properties">
						http://localhost:8182/cxs/profiles/properties
					</a>
				</p>
				<p>
					Individual properties are accessible under (ie. Frist Name)
					<a href="http://localhost:8182/cxs/profiles/properties/firstName">
						http://localhost:8182/cxs/profiles/properties/firstName
					</a>
				</p>
				<p>
					Deploy a new "basic" property "awesomeButtonNumberOfClick" which is an integer by building and deploy the Unomi plugin, it should then be accessible under:
					http://localhost:8182/cxs/profiles/properties/awesomeButtonNumberOfClick
					<a href="http://localhost:8182/cxs/profiles/properties/awesomeButtonNumberOfClick">
						http://localhost:8182/cxs/profiles/properties/awesomeButtonNumberOfClick
					</a>
				</p>

				</div>
			</div>
		</div>
	</div>
	</main>
</body>



