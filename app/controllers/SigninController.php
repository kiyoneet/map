<?php
    $errors = array();
class SigninController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        // $this->errors[] = "エラーだよ";
        echo "error";
        $this->view->setVar("errors" , $this->errors);
    }

    public function signinAction()
    {
        $post = $this->request->getPost();
        echo "<BR>-----POST-----<BR>";
        var_dump($post);
        echo "<BR>--------------<BR>";
        $params = array(
            "conditions" => "email_address = ?1 AND password = ?2",
            "bind" => array(
                1 => $post["email_address"],
                2 => $post["password"],
            ),
        );
        $users = User::find($params);
        echo "<BR>-----select-----<BR>";
        foreach ($users as $user) {
            var_dump($user->email_address , $user->password);
        }
        var_dump($users->email_address , $users->password);
        echo "<BR>----------------<BR>";
        
        

        if (count($users) > 0) {
            echo "Thanks for singnin";
        } else {
            $messages =  "Sorry, the following problems were generated: ";

            $messages = $user->getMessages();

            foreach ($messages as $message) {
                $this->errors[] =  $message->getMessage();
                echo $massage;
            }
            $this->response->redirect("signin/");

        }

        $this->view->disable();
    }

}

