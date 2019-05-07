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
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		  integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script type="text/javascript" src="./javascript/jquery-3.4.0.js"></script>
	<script type="text/javascript" src="./javascript/contextRequest.js"></script>

	<title>Unomi Training</title></head>
<head>

</head>
<body>
<header>
	<nav class="navbar navbar-expand-md navbar-light bg-white fixed-top border-bottom box-shadow">
		<div class="container">
			<a class="navbar-brand" href="index.html">
				<img src="images/unomi-86x20.png" alt="Logo Apache Unomi"/>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarCollapse">
				<div>
					<ul class="navbar-nav mr-auto align-items-center text-uppercase">
						<li class="nav-item">
							<a class="nav-link disabled" target="_blank" href="https://www.apache.org">
								<img src="images/apache-feather-tm-new.png" alt="Logo Apache Feather"/>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

</header>
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