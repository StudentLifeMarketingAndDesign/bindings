<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>">
	<a href="$Link">
		<h3>$MenuTitle <small>$Subheader</small></h3>
		<% if $Contributors %>
			<% loop Contributors %>
				<p class="byline">$FirstName $LastName<% if $Position %>, $Position<% end_if %></p>
			<% end_loop %>
		<% end_if %>
		<div class="clearfix"></div>
	</a>
</li>

			        