<?php

App::uses('Controller', 'Controller');

class AppController extends Controller {

    public $components = array(
        'Session', 'Flash',
        'Auth' => array(
            'loginRedirect' => array(
                'controller' => 'users',
                'action' => 'index'
            ),
            'logoutRedirect' => array(
                'controller' => 'users',
                'action' => 'login'
            ),
            'authError' => 'You must be logged in to view this page.',
            'loginError' => 'Invalid Username or Password entered, please try again.'
        )
    );

    // only allow the login controllers only
    public function beforeFilter() {
        $this->Auth->allow('login');
    }

    public function isAuthorized($user) {
        // Here is where we should verify the role and give access based on role

        return true;
    }

}
