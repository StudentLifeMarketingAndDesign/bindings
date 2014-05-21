<aside class="left-off-canvas-menu show-for-small-up hide-for-large-up">
		<ul class="off-canvas-list side-nav">
		    <% with $CurrentIssue %>     
			   <% if $Children%>
				        <% loop $Children %> 
							<% include SideNavMenuItem %>
				        <% end_loop %> 
			    <% end_if %> 
		    <% end_with %>
		</ul>
</aside>