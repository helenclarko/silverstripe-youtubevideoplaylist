<?php
class Video extends DataObject{
	static $db = array (
		'VideoName' => 'VarChar(250)',
		'URL' => 'VarChar(250)'
	);
	
	static $has_one = array (
		'YouTubeVideoPage' => 'YouTubeVideoPage',
	);
	
	static $summary_fields = array(
	);
	
	function getCMSFields_forPopup() {		
		$fields = new FieldSet(new TabSet('Root'));
         
		//Name
        $fields->addFieldToTab("Root.Name", new TextField('VideoName', 'Name'));
		
		//Video
		$fields->addFieldToTab("Root.Video", new TextField('URL', 'URL Code'));
		 
        return $fields;
    } 
	
}