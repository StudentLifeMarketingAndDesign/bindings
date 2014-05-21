<!doctype html>

<html class="no-js" lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="$Title.ATT" />
	<meta property="og:description" content="$MetaDescription.ATT" />
	<meta property="og:url" content="$AbsoluteLink.ATT" />
	<% if $Image %>
	<meta property="og:image" content="<% with $Image.SetSize(500,500) %>$AbsoluteURL.ATT<% end_with %>" />
	<% end_if %>
	<link rel="icon" type="image/png" href="$ThemeDir/favicon.ico" />
	<%--See [Requirements](http://doc.silverstripe.org/framework/en/reference/requirements) for loading from controller--%>
	<link rel="stylesheet" href="$ThemeDir/css/app.css" />
	<script type="text/javascript" src="//use.typekit.net/yxj2cnc.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	<script src="$ThemeDir/bower_components/modernizr/modernizr.js"></script>
</head>
<body class="$ClassName.ATT">
<div class="off-canvas-wrap">
	<div class="inner-wrap">
	<% include TopBar %>
	<% include SmallTabBar %>

	<% include OffCanvasSideNav %>	
	<div class="main typography" role="main">
		<div class="content row full-width">
				<div class="xxlarge-2 xlarge-3 large-4 side-nav-column large-uncentered columns show-for-large-up">
					<% include SideNav %>
				</div>
				<div class="xxlarge-10 xlarge-9 large-8 main-column columns">
					$Layout
				<% include Footer %>
				</div>
		</div>
	</div>

	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
	<script src="$ThemeDir/build/build.js"></script>

	<a class="exit-off-canvas"></a>
	</div>
	<!--<a class="exit-off-canvas"></a>-->
</div><!-- end off-canvas-wrap -->
</body>
</html>
