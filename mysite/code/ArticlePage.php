<?php
class ArticlePage extends Page {

	private static $db = array(
		"Subheader" => "Text",
		"SecondaryContent" => "HTMLText",
		"PhotoCaption" => "HTMLText"
	);

	private static $has_one = array(
		"CoverImage" => "Image"
	);

	private static $many_many = array(
		"Category" => "Category",
		"Contributors" => "Contributor"
		);
    private static $many_many_extraFields=array();
    
    private static $allowed_children = array();
    
    private static $can_be_root = false;

	private static $defaults = array ();

	public function getCMSFields(){
		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$newGridField = new GridField('Contributors', 'Contributors', $this->Contributors(), $gridFieldConfig);
		
		$f = parent::getCMSFields();
		$f->addFieldToTab("Root.Main", new TextField("PhotoCaption", "Photo Caption"),"Content");
		$f->addFieldToTab("Root.Main", new TextField("Subheader"), "Content");
		$f->addFieldToTab("Root.Main", new UploadField("CoverImage", "Cover Image"), "Content");
		$f->addFieldToTab('Root.Main', $newGridField, 'Content');
		$f->addFieldToTab('Root.Main', new HTMLEditorField('SecondaryContent', 'Secondary Content (sidebar)'));
		return $f;
	}

	public function CurrentIssue(){
		return $this->Parent();
	}

	
}
class ArticlePage_Controller extends Page_Controller {

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

	public function NextPage() {

		$page = Page::get()->filter( array (
				'ParentID' => $this->ParentID,
				'Sort:GreaterThan' => $this->Sort
			) )->First();
		
		return $page;
	}
}