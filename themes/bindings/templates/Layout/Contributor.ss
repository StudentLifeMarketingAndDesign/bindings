	
	<div class="container" id="content">
	
		<% with Item %>
		
			<div class="row" id="backto">
			
				<div>
					<span>$Name</span>
				</div>
			
			</div>
		
			<div class="row">
			
	      		<div class="span8 column">
	      			<p>
	      				$Content
	      			</p>
	
	      		</div>
	      		
	      		<div class="span4 column">
	      			<h1 class="band">Table Of Contents</h1>
	      			<% with getTOC %>
	      				$TableOfContents
	      			<% end_with %>
	
	      		</div>
	      		
			</div>
			
		<% end_with %>
		
		
	
	    </div> <!-- /container -->