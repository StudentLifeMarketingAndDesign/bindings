<li class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %> has-image childList nav-row">
	<div class="small-3 columns nav-column">
		<a href="$Link"><img src="$CoverImage.URL" alt="Smiley face" height="50" width="50" /></a>
	</div>
	<div class="small-9 columns nav-column">
		<a href="$Link"><span class="category">Category</span>$MenuTitle</a>
		<% include Byline %>
	</div>
	<div class="clearfix"></div>
</li>
			        