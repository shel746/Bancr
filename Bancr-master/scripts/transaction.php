<?php

//REMOVE BELOW UPON SUCCESSFUL IMPLEMENTATION
ini_set('display_errors', 'On');
error_reporting(E_ALL | E_STRICT);
//REMOVE ABOVE UPON SUCCESSFUL IMPLEMENTATION

class Transaction
{
	private $account; 
	private $date;
	private $amount; 
	private $merchant;
	private $budget;

	function __construct ($account, $date, $amount, $merchant, $budget)
	{
		$this->account = $account;
		$this->date = $date;
		$this->amount = $amount;
		$this->merchant = $merchant;
		$this->budget = $budget;
	}
	/*
	private function setAccount($account)
	{
		$this->account = $account;
	}

	private function setDate($date)
	{
		$this->date = $date;
	}

	private function setAmount($amount)
	{
		$this->amount = $amount;
	}

	private function setMerchant($merchant)
	{
	 	$this->merchant = $merchant;
	}
	*/
	public function getAccount()
	{
		return $this->account;
	}

	public function getDate()
	{
		return $this->date;
	}

	public function getAmount()
	{
		return $this->amount;
	}

	public function getMerchant()
	{
		return $this->merchant;
	}
	public function getBudget()
	{
		return $this->budget;
	}
}

?>
