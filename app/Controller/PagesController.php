<?php

App::uses('AppController', 'Controller');

class PagesController extends AppController {

    public $components = array('Paginator', 'Flash');

    public function home() {
        $this->loadModel('Book');
        $this->set('books', $this->Book->find('all'));

        if ($this->request->is('post')) {
            $this->Comment->create();
            if ($this->Comment->save($this->request->data)) {
                $this->Flash->success(('The comment has been saved.'));
                return $this->redirect(array('controller' => 'pages', 'action' => 'home'));
            } else {
                $this->Flash->error(('The comment could not be saved. Please, try again.'));
            }
        }

        $this->loadModel('Comment');
        $this->set('comments', $this->Comment->find('all'));

//        $this->Book->recursive = 2;
//        echo '<pre>', print_r($comments), '</pre>';
    }

}
