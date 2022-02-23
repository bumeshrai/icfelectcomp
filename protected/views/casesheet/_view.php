<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('caseid')); ?>:</b>
	<?php if (!Yii::app()->user->isAdmin() || $data->closed=='false') {
		echo CHtml::link(CHtml::encode($data->caseid), array('view', 'id'=>$data->caseid)); 
		} else {
		echo CHtml::link(CHtml::encode($data->caseid), array('closed', 'id'=>$data->caseid)); 
		}?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('depot')); ?>:</b>
	<?php echo CHtml::encode($data->depot); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('coachType')); ?>:</b>
	<?php echo CHtml::encode($data->coachTypes->type); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('equipment')); ?>:</b>
	<?php echo CHtml::encode($data->equipments->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('manufacturer')); ?>:</b>
	<?php echo CHtml::encode($data->manufacturers->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('icfComments')); ?>:</b>
	<?php echo CHtml::encode($data->icfComments); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('closed')); ?>:</b>
	<?php echo CHtml::encode($data->getClosed()); ?>
	<br />

	<!--   bug 
	<b><?php if($data->fileUploaded == 'true') { 
		echo CHtml::encode('Uploaded File'); ?>:</b>
	<?php echo CHtml::image($data->fileUrl, 'Uploaded File',  array('width'=>100,"title"=>'Uploaded File')); }?>
	<br />
	-->
	

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('railway')); ?>:</b>
	<?php echo CHtml::encode($data->getRailway()); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('division')); ?>:</b>
	<?php echo CHtml::encode($data->getDivision()); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('coachNo')); ?>:</b>
	<?php echo CHtml::encode($data->coachNo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('equipmentNo')); ?>:</b>
	<?php echo CHtml::encode($data->equipmentNo); ?>
	<br />


	<b><?php echo CHtml::encode($data->getAttributeLabel('description')); ?>:</b>
	<?php echo CHtml::encode($data->description); ?>
	<br />


	<b><?php echo CHtml::encode($data->getAttributeLabel('complainant')); ?>:</b>
	<?php echo CHtml::encode($data->complainant); ?>
	<br />

	*/ ?>

</div>

