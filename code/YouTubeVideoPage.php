<?php
class YouTubeVideoPage extends Page {
	public static $db = array(
	);

	public static $has_one = array(
	);
	
	public static $has_many = array(
		"Video" => "Video"
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		//People
		$videoTable = new DataObjectManager(
            $this,
            'Video',
            'Video',
            array(
                'VideoName' => 'Name',
				'URL' => 'URL'
            ),
            'getCMSFields_forPopup'
        );
        $videoTable->setAddTitle('Video'); 
		
        $fields->addFieldToTab('Root.Content.Video', $videoTable);
		
		return $fields;
	}
}

class YouTubeVideoPage_Controller extends Page_Controller {
} 