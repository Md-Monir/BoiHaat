<?php

App::uses('AppController', 'Controller');

class PagesController extends AppController {

    public $components = array('Paginator', 'Flash');

    public function home() {
        $this->loadModel('Book', 'Comment');
        $this->Book->recursive = 2; 
        $books = $this->Book->find('all');
        echo '<pre>',print_r($books),'</pre>';
//        $comments = $this->Comment->find('all');
        $this->set(compact('comments', 'books'));
    }

}
