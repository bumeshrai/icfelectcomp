<div id="case_sheet">
	<br><br>
	<h4><font color='red'><?php echo $model->getEquipment(); ?></font> 
	from 
	<font color='red'><?php echo $model->getManufacturer(); ?></font>  
	failed in Coach Nos. 
	<font color='red'><?php echo $model->coachNo; ?></font>  
	maintained by 
	<font color='red'><?php echo $model->depot; ?></font>  
	. <br>
	The coach was commissioned on 
	<font color='red'><?php echo date("d-M-Y",strtotime($model->dateCommission)); ?></font>
	. And the equipment failed on
	<font color='red'><?php echo date("d-M-Y",strtotime($model->dateFailure)); ?></font>
	, i.e the equipment failed after 
	<font color='red'>
	<?php echo (strtotime($model->dateFailure) - strtotime($model->dateCommission))/86400; ?>
	</font>  
	days of on-line working.
	
	<br><br>
	The failure reported by User Railways was:  <font color='red'><?php echo $model->description; ?></font>
	<br><br>
	ICF registered the case on 	
	<font color='red'><?php echo date("d-M-Y",strtotime($model->dateRegisteration)); ?></font>
	and then closed the case on	
	<font color='red'><?php echo date("d-M-Y",strtotime($model->dateActionTaken)); ?></font>.
	<br><br>
	The action taken report from ICF states that: 
	<font color='red'><?php echo $model->icfComments; ?></font>  

	<br><br>
	Thus ICF has taken
	<font color='red'>
	<?php echo (strtotime($model->dateActionTaken) - strtotime($model->dateRegisteration))/86400; ?>
	</font>  
	days in the process.
	</h4> 
</div>

<?php 
    $this->widget('application.extensions.print.printWidget', array(                   
                   'cssFile' => 'print.css',
                   'printedElement'=>'#case_sheet',
                   'title' => 'Case Sheet No. ' . $model->caseid,
                   )
                 );
?>
