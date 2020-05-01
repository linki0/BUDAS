<?php
// Requires
require('/nginx/www/config/main.php');

// Require requested file and store contents
ob_start();
require(str_replace('//', '/', $BASE_PATH.$_SERVER['DOCUMENT_URI']));
$LAYOUT_INFO['html'] = ob_get_contents();
ob_end_clean();


// Include layout file
if($LAYOUT_INFO['layout'] != '' && $LAYOUT_INFO['layout'] != 'none')
{
	require('/nginx/www/includes/layouts/'.$LAYOUT_INFO['layout'].'.php');
}
else
{
	echo $LAYOUT_INFO['html'];
}
?>