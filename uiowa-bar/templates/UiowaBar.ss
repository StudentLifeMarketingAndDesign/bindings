<% require css(uiowa-bar/css/_uiowa-bar.css) %>
<div class="uiowa-topbar">
    <div class="wrapper">
        <a href="http://www.uiowa.edu/" target="_blank" class="uiowa-logo"><img src="uiowa-bar/images/division-bar/uiowa.png" /></a>
        <% if SearchForm %>
            <div class="uiowa-search">
                <% with SearchForm %>
                    <form $FormAttributes>
        	            <label>Search</label>
                        <input type="search" placeholder="Search" results="5" name="Search" class="uiowa-search-input" for="uiowasearchinput">
                        <input type="submit" class="uiowa-search-btn" id="uiowasearchinput" value="search">
                    </form>
                <% end_with %>
            </div>
        <% end_if %>
        <div class="clear"></div>    
     </div>
</div>