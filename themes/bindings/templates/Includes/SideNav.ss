<ul class="side-nav">
	<% with CurrentIssue %>
		<li class="issue-title"><a href="$Link">Table of Contents</a></li>
		<% include SideNavMenuItems %>
	<% end_with %>
</ul>