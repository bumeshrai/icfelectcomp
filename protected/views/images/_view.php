<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('image_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->image_id), array('view', 'id'=>$data->image_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('filename')); ?>:</b>
	<?php echo CHtml::encode($data->filename); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mime_type')); ?>:</b>
	<?php echo CHtml::encode($data->mime_type); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('file_size')); ?>:</b>
	<?php echo CHtml::encode($data->file_size); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('file_data')); ?>:</b>
	<?php echo CHtml::image($data->fileUrl, $data->filename,  array('width'=>100,"title"=>$data->filename)); ?>
	<br />


</div>