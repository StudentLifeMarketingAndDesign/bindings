<?php

class ContributorAdmin extends ModelAdmin {


  private static $managed_models = array('Contributor'); 
  private static $url_segment = 'Contributor';
  private static $menu_title = 'Contributors';
  private static $menu_icon = 'themes/bindings/images/sponsor.png';
  public $showImportForm = false; 
  


}
