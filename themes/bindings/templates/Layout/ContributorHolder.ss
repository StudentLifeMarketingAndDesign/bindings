<div id="breadcrumbs">
	<a href="$contributorIssue.Link">$contributorIssue.Title</a>
	<% with GetContributorInfo %>
		&raquo; Contributors &raquo; $FirstName $LastName
	<% end_with %>
</div>
<div id="content" class="typography">
	<% with GetContributorInfo %>
		<h1>$FirstName $LastName</h1>
		$Bio
	<% end_with %>
</div>
