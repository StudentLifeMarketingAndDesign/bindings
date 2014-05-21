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
		<div class="large-12 columns">
			<div class="content-text">
			<blockquote>
				“I’m a birder, so I was instantly intrigued by Shirley Briggs and her connectionto my hero Rachel Carson. Reading Silent Spring was deeply moving for me and influenced the trajectory of my career.” 

				-Liz Christiansen, Director of the 
				Office of Sustainability.”
			</blockquote>				
				$Content
			</div>
		</div>
		$Next
	</div>

</article>