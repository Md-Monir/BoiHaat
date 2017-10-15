<?php

App::uses('AppController', 'Controller');

class CommentsController extends AppController {

    public $components = array('Paginator', 'Flash');

    public function index() {
        $this->Comment->recursive = 0;
        $this->set('comments', $this->Paginator->paginate());
    }

    public function view($id = null) {
        if (!$this->Comment->exists($id)) {
            throw new NotFoundException(('Invalid comment'));
        }
        $options = array('conditions' => array('Comment.' . $this->Comment->primaryKey => $id));
        $this->set('comment', $this->Comment->find('first', $options));
    }

    public function add() {
        if ($this->request->is('post')) {
            $this->Comment->create();
            if ($this->Comment->save($this->request->data)) {
                $this->Flash->success(('The comment has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Flash->error(('The comment could not be saved. Please, try again.'));
            }
        }
        $users = $this->Comment->User->find('list');
        $books = $this->Comment->Book->find('list');
        $this->set(compact('users', 'books'));
    }

    public function edit($id = null) {
        if (!$this->Comment->exists($id)) {
            throw new NotFoundException(('Invalid comment'));
        }
        if ($this->request->is(array('post', 'put'))) {
            if ($this->Comment->save($this->request->data)) {
                $this->Flash->success(('The comment has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Flash->error(('The comment could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('Comment.' . $this->Comment->primaryKey => $id));
            $this->request->data = $this->Comment->find('first', $options);
        }
        $users = $this->Comment->User->find('list');
        $books = $this->Comment->Book->find('list');
        $this->set(compact('users', 'books'));
    }

    public function delete($id = null) {
        $this->Comment->id = $id;
        if (!$this->Comment->exists()) {
            throw new NotFoundException(('Invalid comment'));
        }
        $this->request->allowMethod('post', 'delete');
        if ($this->Comment->delete()) {
            $this->Flash->success(('The comment has been deleted.'));
        } else {
            $this->Flash->error(('The comment could not be deleted. Please, try again.'));
        }
        return $this->redirect(array('action' => 'index'));
    }

}
