<article>
	<header>
		<h1>$Title</h1>
	</header>
	<div class="row">
		<div class="large-9 columns">
			<div class="content-text">
				<ul>
					<% loop Children %>
						<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
</article>

