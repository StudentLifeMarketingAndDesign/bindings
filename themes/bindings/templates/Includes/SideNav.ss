<ul class="side-nav nav-grid">
	<li class="title-nav">
		<a href="$Link">
			<h1><img src="{$ThemeDir}/images/logo-white.png"/><span class="category">$CurrentIssue.Title</span></h1>
		</a>
	</li>
	<% loop $TableOfContents %>
		<% include SideNavMenuItem %>
	<% end_loop %>
</ul>