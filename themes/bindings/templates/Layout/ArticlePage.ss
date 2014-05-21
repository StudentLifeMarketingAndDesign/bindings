<article>
	<header>
		<h1>$Title
			<small>$Subheader</small>
		</h1>

		<% include Byline %>
	</header>
	<% if $CoverImage %>
		<%--<img src="$CoverImage.URL" class="cover" /> --%>

	<% end_if %>
	<img src="http://lorempixel.com/1024/700/" class="cover" />
	<p> $PhotoCaption </p>

			<div class="content-text">
			<blockquote>
				“I’m a birder, so I was instantly intrigued by Shirley Briggs and her connectionto my hero Rachel Carson. Reading Silent Spring was deeply moving for me and influenced the trajectory of my career.” 

				-Liz Christiansen, Director of the 
				Office of Sustainability.”
			</blockquote>				
				$Content
		$Next
	</div>

</article>