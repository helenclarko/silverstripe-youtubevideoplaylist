<?php
class YouTubeVideoPage extends Page {
	public static $db = array(
	'Bottom' => 'Boolean',
	'BackgroundColour' => 'VarChar(7)',
	'TextColour' => 'VarChar(7)',
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
		$fields->addFieldToTab('Root.Content.Layout', new CheckboxField('Bottom', 'Display playlist at the bottom'));
		$fields->addFieldToTab("Root.Content.Layout", new TextField("BackgroundColour", 'Hex colour code for Background Colour', '', 7));
		$fields->addFieldToTab("Root.Content.Layout", new TextField("TextColour", 'Hex colour code for Text Colour', '', 7));
		
		return $fields;
	}
}

class YouTubeVideoPage_Controller extends Page_Controller {
} 