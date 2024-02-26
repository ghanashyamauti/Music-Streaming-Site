<?php
	
	class User {

		private $con;
		private $username;

		public function __construct($con, $username) {
			$this->con = $con;
			$this->username = $username;
		}

		public function getUsername() {
			return $this->username;
		}
		public function getEmail() {
			$query = mysqli_query($this->con, "SELECT email FROM users WHERE username='$this->username'");
			
			if ($query) {
				$row = mysqli_fetch_array($query);
		
				if ($row !== null) {
					return $row['email'];
				}
			} else {
				// Log or display the MySQL error
				echo "MySQL Error: " . mysqli_error($this->con);
			}
		
			return "No Email";
		}
		
		
		

		public function getFirstAndLastName() {
			$query = mysqli_query($this->con, "SELECT CONCAT(firstName, ' ', lastName) as 'name' FROM users WHERE username='$this->username'");
			
			if ($query) {
				$row = mysqli_fetch_array($query);
		
				// Check if $row is not null before accessing the array offset
				if ($row !== null) {
					return $row['name'];
				}
			}
		
			// Return a default value or handle the case where no result is found
			return "No Name";
		}
		
		}
	

?>