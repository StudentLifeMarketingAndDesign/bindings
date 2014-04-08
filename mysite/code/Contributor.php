<?php
class Contributor extends DataObject {

    private static $db = array(
    	'FirstName' => 'Varchar(255)',
    	'LastName' => 'Varchar(255)',
    	'Position' => 'Varchar(255)',
        'BiographicalDetails' => 'HTMLText'
    );

    private static $has_one = array( 
    	'Image'=> 'Image'
    );

    private static $belongs_many_many = array(
    	'Articles' => 'ArticlePage'
    );

    public function Link(){
        $contributorPage = ContributorPage::get()->First();
        if($contributorPage){
            return $contributorPage->Link().'show/'.$this->ID;
        }
    }   

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName('Content');
        $fields->removeByName('Metadata');
        $fields->removeByName('Image');
        $fields->removeByName('Articles');

        $fields->addFieldToTab('Root.Main', new TextField('FirstName', 'First Name'));
        $fields->addFieldToTab('Root.Main', new TextField('LastName', 'Last Name'));
        $fields->addFieldToTab('Root.Main', new TextField('Position', 'Position'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('BiographicalDetails', 'Biographical Details'));

        return $fields;
    }
    

}
