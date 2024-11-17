<?php
// send_mail.php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php'; // Ensure path is correct

$con = mysqli_connect("localhost", "root", "", "myhmsdb");

if (isset($_POST['btnSubmit'])) {
    $name = $_POST['txtName'];
    $email = $_POST['txtEmail'];
    $contact = $_POST['txtPhone'];
    $message = $_POST['txtMsg'];

    // Insert data into the database
    $query = "INSERT INTO contact (name, email, contact, message) VALUES ('$name', '$email', '$contact', '$message')";
    $result = mysqli_query($con, $query);

    if ($result) {
        // Create a new PHPMailer instance
        $mail = new PHPMailer(true);

        try {
            // Server settings
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'kiran301103@gmail.com'; // Your Gmail address
            $mail->Password = 'yfsz shhg yjot ixvg'; // Your Gmail App Password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            // Recipients
            $mail->setFrom($email, $name);
            $mail->addAddress('recipient@example.com', 'Recipient Name'); // Recipient's email and name

            // Content
            $mail->isHTML(true);
            $mail->Subject = 'New Contact Message';
            $mail->Body    = "You have a new message from <b>$name</b>.<br>Email: <b>$email</b><br>Phone: <b>$contact</b><br>Message: <b>$message</b>";

            // Send email
            $mail->send();
            echo '<script type="text/javascript">'; 
            echo 'alert("Message sent successfully!");'; 
            echo 'window.location.href = "contact.html";';
            echo '</script>';
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    } else {
        echo "Failed to insert data into the database.";
    }
}
?>
