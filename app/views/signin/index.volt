<?php use Phalcon\Tag;?>
<h2>サインイン</h2>
<?php echo Tag::stylesheetLink("css/account.css"); ?>
<?php echo Tag::form("signin/signin"); ?>

<div class="container">


    <div class="login">
        <h2 class="authTitle">Post It Map</h2>
        <div class="row row-sm-offset-3 socialButtons">
            <div class="col-xs-4 col-sm-2">
                <a href="#" class="btn btn-lg btn-block btn-facebook">

                    <span class="hidden-xs">Facebook</span>
                </a>
            </div>
            <div class="col-xs-4 col-sm-2">
                <a href="#" class="btn btn-lg btn-block btn-twitter">

                    <span class="hidden-xs">Twitter</span>
                </a>
            </div>
            <div class="col-xs-4 col-sm-2">
                <a href="#" class="btn btn-lg btn-block btn-google">

                    <span class="hidden-xs">Google+</span>
                </a>
            </div>
        </div>
        {% for error in errors %}
        <div class="alert alert-warning" role="alert">
            <ul>
                <li><?php echo error ?></li>
            </ul>
        </div>    
        {% endfor %}    

        <div class="row row-sm-offset-3 loginOr">
            <div class="col-xs-12 col-sm-6">
                <hr class="hrOr">
                <span class="spanOr">or</span>
            </div>
        </div>
        <div class="row row-sm-offset-3">
            <div class="col-xs-12 col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    </span>
                    <?php echo Tag::emailField(array("email_address", "class" => "form-control" , "placeholder" => "email address")) ?>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                    </span>
                    <?php echo Tag::passwordField(array("password" , "class" => "form-control" , "placeholder" => "password")) ?>
                </div>
                <?php echo Tag::submitButton(array("name" => "singnin" ,"value" => "サインイン" , "class" => "btn btn-lg btn-primary btn-block")) ?>
            </div>
            <div class="row row-sm-offset-3">
<div class="col-xs-12 col-sm-3">
                    <a href="signup">新規登録</a>

                </div>
            </div>
        </div>





        </form>