<?php
class Video extends DataObject
{
    public static $db = array(
        'VideoName' => 'VarChar(250)',
        'URL' => 'VarChar(250)'
    );
    
    public static $has_one = array(
        'YouTubeVideoPage' => 'YouTubeVideoPage',
    );
    
    public static $summary_fields = array(
    );
    
    public function getCMSFields_forPopup()
    {
        $fields = new FieldSet(new TabSet('Root'));
         
        //Name
        $fields->addFieldToTab("Root.Name", new TextField('VideoName', 'Name'));
        
        //Video
        $fields->addFieldToTab("Root.Video", new TextField('URL', 'URL Code'));
         
        return $fields;
    }
}
