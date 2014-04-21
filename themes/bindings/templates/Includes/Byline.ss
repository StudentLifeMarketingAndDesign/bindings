<% if $Contributors %>
	<% loop Contributors %>
	<p><a href="$Link">$FirstName $LastName</a><% if $Position %>, $Position<% end_if %></p>
	<% end_loop %>
<% end_if %>