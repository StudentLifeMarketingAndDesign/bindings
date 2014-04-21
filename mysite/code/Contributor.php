<?php
class Contributor extends DataObject {

    private static $db = array(
    	'FirstName' => 'Varchar(255)',
    	'LastName' => 'Varchar(255)',
    	'Position' => 'Varchar(255)',
        'Content' => 'HTMLText'
    );

    private static $has_one = array( 
    	'Image'=> 'Image'
    );

    private static $belongs_many_many = array(
    	'Articles' => 'ArticlePage'
    );

    private static $summary_fields = array ("FirstName", "LastName", "Position");

    public function Link(){
        $contributorPage = ContributorHolderPage::get()->First();
        if($contributorPage){
            return $contributorPage->Link().'show/'.$this->ID;
        }
    }   

    public function getCMSFields() {
        $fields = parent::getCMSFields();

  /*      $fields->addFieldToTab('Root.Main', new TextField('FirstName', 'First Name'));
        $fields->addFieldToTab('Root.Main', new TextField('LastName', 'Last Name'));
        $fields->addFieldToTab('Root.Main', new TextField('Position', 'Position'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Biographical Details'));*/

        return $fields;
    }
    

}
