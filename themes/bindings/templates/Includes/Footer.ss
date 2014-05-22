
<footer class="footer clearfix" role="contentinfo">
    <div class="row">
        <div class="large-4 columns">
				<a href="http://studentlife.uiowa.edu" class="hide-print logo"><img src="$ThemeDir/images/UILib-stackedBlack-01.png" alt="Division Of Student Life" style="margin-top: -20px;"></a><br>

				<p>The University of Iowa Libraries<br />
					100 Main Library (LIB)<br />
					Iowa City, IA 52242-1420</p>
		</div>
				
		<div class="large-4 columns">
			<div class="colgroup">
				<ul class="footer-nav">
					<li><a href="https://www.facebook.com/uiowacab" target="_blank"><i class="icon-facebook"></i> Facebook</a></li>
					
					<% if $SiteConfig.TwitterLink %>
					<li><a href="https://twitter.com/uiowaCAB" target="_blank"><i class="icon-twitter"></i> Twitter</a></li>
					<% end_if %>
				</ul>
				<ul class="footer-nav">
					<% loop Menu(1) %>
						<li><a href="$Link">$MenuTitle</a></li>
					<% end_loop %>
				</ul>
			</div>
		</div>
		<div class="large-4 columns hide-print">
			<p>The University of Iowa Libraries is the largest library system in Iowa and 9th in materials expenditures among U.S. public research libraries (ARL FY10 data). The University’s Main Library, Hardin Library for the Health Sciences, 5 branch libraries, and the Law Library contain more than 5 million volumes.</p> 
		</div>
	</div>
	<div class="row">
		<div class="large-12 columns">
	        <hr>
	        <p>&copy; $Now.Year <a href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved.</p>
    	</div>
    </div>
</footer>
