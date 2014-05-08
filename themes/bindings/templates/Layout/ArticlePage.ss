<article>
	<header>
		<span class="category">Category</span>
		<h1>$Title</h1>
		<% include Byline %>
	</header>
	<% if $CoverImage %>
		<%--<img src="$CoverImage.URL" class="cover" /> --%>

	<% end_if %>
	<img src="http://lorempixel.com/1024/700/" class="cover" />
	<p> $PhotoCaption </p>
	<div class="row">
		<div class="large-9 columns">
			<div class="content-text">
				$Content
			</div>
		</div>

		<div class="large-3 columns">
			$SecondaryContent
		</div>
		$Next
	</div>

</article>