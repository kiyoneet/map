<?php

class SignupController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function registerAction()
    {
        $user = new User();
        $post = $this->request->getPost();
        //var_dump($this->request->getPost());
        $criteria = $user->query();
        $criteria->columns("id");
        $criteria->where("email_address = :email_address:" , ["email_address" => $post["email_address"]]);
        $criteria->andwhere("password = :password:" , ["password" => $post["password"]]);
        $res = $criteria->execute();
        //var_dump($res);
        // データを保存し、エラーをチェックする
        

        if ($find) {
            echo "Thanks for registering!";
        } else {
            echo "Sorry, the following problems were generated: ";

            $messages = $user->getMessages();

            foreach ($messages as $message) {
                echo $message->getMessage(), "<br/>";
            }
        }

        $this->view->disable();
    }

}

