<?php $this->pageTitle=Yii::app()->name; ?>

<h1>Welcome to <i>On Line Complaints Form</i></h1>



<?php if(!Yii::app()->user->isGuest) {?>
<p>
	You last logged in on <?php echo date('l, F d, Y, g:i a',Yii::app()->user->lastLoginTime );  ?>
</p>
<?php	} else {?>
<p>You can fill in the equipment failure form by:</p>
<ol type="I">
	<li>Filling up the Registration Form. </li>
	<li>You will be sent the username/password on acceptance of Registration. </li>
	<li>Log in using username/password for using the website</li>
</ol>
<?php }?>

