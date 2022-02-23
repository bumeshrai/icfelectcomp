<?php
class MyDateValidator extends CValidator {

	public $date_before;
	public $date_after;

	public function validateAttribute( $model, $attribute ) {
		$value = $model->$attribute;

		if($attribute=='dateCommission') {
			$this->date_before = $value;
		}
 		if( $attribute == 'dateFailure' ) {
			$this->date_after = $value;
		}
		if( $this->date_before !== NULL && $this->date_after !== NULL ) {
			if( $this->date_before > $this->date_after ) {
				$model -> addError( $attribute, 'Commissioning Date should be before Failure Date1' );
			}
		}
	}
}