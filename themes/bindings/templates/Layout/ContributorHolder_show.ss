<div class="container" id="content">

	<div class="row no-center">
		<div class="span8 column">
			<% with $Contributor %>
				<h1>$FirstName $LastName</h1>
				$BiographicalDetails
				<h2>Works Contributed by $LastName:</h2>
				<ul>
					<% loop ArticlePages %>
					<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
			<% end_with %>
		</div>

		<div class="span4 column sidebar">
		</div>
	</div>

</div> <!-- /container -->