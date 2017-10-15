<?php

App::uses('AppController', 'Controller');

class UsersController extends AppController {

    public $components = array('Paginator', 'Flash');

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('login', 'add');
    }

    public function login() {
        //if already logged-in, redirect
        if ($this->Session->check('Auth.User')) {
            $this->redirect(array('action' => 'index'));
        }

        // if we get the post information, try to authenticate
        if ($this->request->is('post')) {
            if ($this->Auth->login()) {
                $this->Session->setFlash(('Welcome, ' . $this->Auth->user('username')));
                return $this->redirect($this->Auth->redirectUrl());
            } else {
                $this->Session->setFlash(('Invalid username or password'));
            }
        }
    }

    public function logout() {
        $this->Auth->logout();
        return $this->redirect("/");
    }

    public function index() {
        $this->User->recursive = 0;
        $this->set('users', $this->Paginator->paginate());
    }

    public function view($id = null) {
        if (!$this->User->exists($id)) {
            throw new NotFoundException(('Invalid user'));
        }
        $options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
        $this->set('user', $this->User->find('first', $options));
    }

    public function add() {
        if ($this->request->is('post')) {
            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Flash->success(('The user has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Flash->error(('The user could not be saved. Please, try again.'));
            }
        }
    }

    public function edit($id = null) {
        if (!$this->User->exists($id)) {
            throw new NotFoundException(('Invalid user'));
        }
        if ($this->request->is(array('post', 'put'))) {
            if ($this->User->save($this->request->data)) {
                $this->Flash->success(('The user has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Flash->error(('The user could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
            $this->request->data = $this->User->find('first', $options);
        }
    }

    public function delete($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(('Invalid user'));
        }
        $this->request->allowMethod('post', 'delete');
        if ($this->User->delete()) {
            $this->Flash->success(('The user has been deleted.'));
        } else {
            $this->Flash->error(('The user could not be deleted. Please, try again.'));
        }
        return $this->redirect(array('action' => 'index'));
    }

}
