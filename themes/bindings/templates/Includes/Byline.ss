<% if $Contributors %>
	<% loop Contributors %>
	<p class="byline">$FirstName $LastName<% if $Position %>, $Position<% end_if %></p>
	<% end_loop %>
<% end_if %>