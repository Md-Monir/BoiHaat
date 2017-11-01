<?php

App::uses('AppController', 'Controller');

class PagesController extends AppController {

    public $components = array('Flash');
    var $uses = array('Book', 'Comment', 'Add');

    public function home() {

        if ($this->request->is('post')) {
            $this->Comment->create();
            if ($this->Comment->save($this->request->data)) {
                $this->Flash->success(('The comment has been saved.'));
                return $this->redirect(array('controller' => 'pages', 'action' => 'home'));
            } else {
                $this->Flash->error(('The comment could not be saved. Please, try again.'));
            }
        }

        $this->set('adds', $this->Add->find('all'));
        $this->set('books', $this->Book->find('all'));
        $this->set('comments', $this->Comment->find('all'));
    }

}
