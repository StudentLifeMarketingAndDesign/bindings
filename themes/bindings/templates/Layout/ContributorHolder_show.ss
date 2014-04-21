<% with Contributor %>
<article>
	<header>
		<h1>$FirstName $LastName</h1>
		<p>$Position</p>
	</header>
	<div class="row content-text">
		<div class="large-9 columns">
			$Content
			<p>Works Contributed by $FirstName $LastName:</p>
				<ul>
					<% loop Articles %>
					<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
			$Form
		</div>
		<div class="large-3 columns">

		</div>
	</div>
	
</article>
<% end_with %>