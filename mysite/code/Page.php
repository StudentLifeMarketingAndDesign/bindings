<?php
class Page extends SiteTree {

	private static $db = array(
		
	);

	private static $has_one = array(
	);


	private static $many_many = array (
	);

    private static $many_many_extraFields=array(
      );

    private static $plural_name = "Pages";

	private static $defaults = array ();


	public function getCMSFields(){
		$f = parent::getCMSFields();
		
		return $f;
	}

	
}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates
		// instead of putting Requirements calls here.  However these are
		// included so that our older themes still work
	}

	public function TableOfContents(){

		return $this->CurrentIssue()->Children();
	}

	public function CurrentIssue(){
		if($this->ClassName == 'Issue'){
			return $this;
		// Else if we're on an article page, get the parent (Issue)'s children
		}elseif($this->ClassName == 'ArticlePage'){
			$parent = $this->getParent();
			return $parent;
		// Otherwise, we're on an interior page, so let's just get the latest Issue's Children.
		}else{
			return $this->LatestIssue();
		}		
	}

	public function LatestIssue(){
		$homePage = RedirectorPage::get()->filter(array("URLSegment" => "home"))->First();
		$currentIssue = $homePage->LinkTo();
		return $currentIssue;
	}
	
}