<?php 
 	if(isset($_POST['submit'])){
 		$email_to ="jchu@angkorperu.com";
 		$email_subject=$_POST['email'];
 		if(!isset($_POST['name']) || !isset($_POST['email']) || !isset($_POST['phone']) || !isset($_POST['message'])){
 			echo "<b>Ocurrio un error.</b> <br>",
 			die();
 		}
 		$email_message = "Detalles del formulario de contacto:\n n";
 		$email_message .= "Nombre: " . $_POST['name'] ."\n";
 		$email_message .= "E-mail: " . $_POST['email'] . "\n";
		$email_message .= "Teléfono: " . $_POST['phone'] . "\n";
		$email_message .= "Empresa: " . $_POST['business'] . "\n";
		$email_message .= "Cargo: " . $_POST['position'] ."\n";
		$email_message .= "Message: " . $_POST['message'] . "\n\n";

		$headers = 'From: ' .$email_from."\r\n".'Reply-To: '.$email_from."\r\n".'X-Mailer: PHP/' .phpversion();
		@mail($email_to, $email_subject, $email_message, $headers);

		echo "¡El formulario se ha enviado con éxito!";
 	}

 ?>