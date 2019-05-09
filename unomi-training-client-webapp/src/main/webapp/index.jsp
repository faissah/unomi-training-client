<html lang="en">
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
	<!-- Required meta tags -->
	<jsp:include page="head.jspf"></jsp:include>
	<title>Unomi Training</title></head>
<head>

</head>
<body>
<jsp:include page="header.jspf"></jsp:include>
<main>
	<div class="container-fluid product pt-5 pb-5 mx-auto">
		<div class="row pt-5 pb-5">
			<div class="container">
				<div class="col pt-5 mx-auto text-left">

					<h1>Unomi Training</h1>
					<p> Welcome to the Unomi Training</p>
					<p><a href="/training/exercise0">Exercise 0: Trigger a first call to Unomi</a>
					<p><a href="/training/exercise1">Exercise 1: Declare a profile property</a>
					<p><a href="/training/exercise2">Exercise 2: Send an Event to Unomi</a>
					<p><a href="/training/exercise3">Exercise 3</a>
					<p><a href="/training/exercise4">Exercise 4</a>
					</p>
					<p>
						You are coming from
						<%= request.getRemoteAddr()  %></p>
				</div>
			</div>
		</div>
	</div>
</main>
</body>