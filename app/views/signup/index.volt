<?php use Phalcon\Tag;?>
 <h2>サインアップ</h2>
<?php echo Tag::form("signup/register"); ?>

<p>
 <label for="email_address">E-Mail</label>
 <?php echo Tag::emailField("email_address") ?>
 </p>
<p>
 <label for="password">password</label>
 <?php echo Tag::passwordField("password") ?>
 </p>
<p>
 <?php echo Tag::submitButton("登録") ?>
 </p>
</form>