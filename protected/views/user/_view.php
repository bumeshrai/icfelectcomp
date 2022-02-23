<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('userId')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->userId), array('view', 'id'=>$data->userId)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('username')); ?>:</b>
	<?php echo CHtml::encode($data->username); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('designation')); ?>:</b>
	<?php echo CHtml::encode($data->designation); ?>
	<br />


	<b><?php echo CHtml::encode($data->getAttributeLabel('depot')); ?>:</b>
	<?php echo CHtml::encode($data->depot); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
	<?php echo CHtml::encode($data->email); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rlyno')); ?>:</b>
	<?php echo CHtml::encode($data->rlyno); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('railway')); ?>:</b>
	<?php echo CHtml::encode($data->getRailway()); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('division')); ?>:</b>
	<?php echo CHtml::encode($data->getDivision()); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('bsnlno')); ?>:</b>
	<?php echo CHtml::encode($data->bsnlno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rlyno')); ?>:</b>
	<?php echo CHtml::encode($data->rlyno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mobile')); ?>:</b>
	<?php echo CHtml::encode($data->mobile); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fax')); ?>:</b>
	<?php echo CHtml::encode($data->fax); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:</b>
	<?php echo CHtml::encode($data->password); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('authorised')); ?>:</b>
	<?php echo CHtml::encode($data->authorised); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('last_login_time')); ?>:</b>
	<?php echo CHtml::encode($data->last_login_time); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('create_time')); ?>:</b>
	<?php echo CHtml::encode($data->create_time); ?>
	<br />

	*/ ?>

</div>