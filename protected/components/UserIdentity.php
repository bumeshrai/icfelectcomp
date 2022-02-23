<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity {
	
	private $_id;	
	private $_railway;	
	private $_division;	
	private $_zoneId;
	private $_divisionId;
	/**
	 * Authenticates a user using the User data model.
	 * It contains the authenciation method that checks if the provided 
	 * data can identify the user.
	 */
	public function authenticate()
	{
		$user=User::model()->findByAttributes(array('username'=>$this->username));
		if($user===null)
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		else {
			if($user->password!==$user->encrypt($this->password)) {
				$this->errorCode=self::ERROR_PASSWORD_INVALID;
			}
			else {
				if($user->authorised==='false') {
						$this->errorCode=self::ERROR_PASSWORD_INVALID;
					}
				else {
				// Store the username, railway, division, last login time
					$this->_id=$user->userId;
					$this->_zoneId=$user->railway;
					$this->_divisionId=$user->division;
				
					$railway=Railways::model()->findByAttributes(array('zoneId'=>$user->railway));
					$this->_railway = $railway->zone;

					$division=Division::model()->findByAttributes(array('divisionId'=>$user->division));
					$this->_division = $division->divisionname;
				
					if(null===$user->lastLoginTime)	
						$lastLogin=time();
					else {
						$lastLogin=strtotime($user->lastLoginTime);	
					}
				
					$this->setState('lastLoginTime',$lastLogin);
					$this->setState('zoneId',$this->_zoneId);
					$this->setState('railway',$this->_railway);
					$this->setState('divisionId',$this->_divisionId);
					$this->setState('division',$this->_division);
					/* if($user->isAdmin==='true') {
						$this->setState('admin',true);
					}
					else {
						$this->setState('admin',false);
					} */
				
					$this->errorCode=self::ERROR_NONE;
				}
			}
		}
		return !$this->errorCode;
	}
	
	public function getId() {
		return $this->_id;	
	}
	
	public function getRailway() {
		return $this->_railway;	
	}

	public function getDivision() {
		return $this->_division;	
	}

}