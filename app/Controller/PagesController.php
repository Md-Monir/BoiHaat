<?php

App::uses('AppController', 'Controller');

class PagesController extends AppController {

    public $components = array('Paginator', 'Flash');

    public function home() {
        $this->loadModel('Book', 'Comment');
        $books = $this->Book->find('all');
//        $comments = $this->Comment->find('all');
        $this->set(compact('comments', 'books'));
    }

}
