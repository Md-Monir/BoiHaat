<?php

App::uses('AppController', 'Controller');

class BooksController extends AppController {

    public $components = array('Flash');

    public function index() {
        $this->Book->recursive = 0;
        $this->set('books', $this->Book->find('all'));
    }

    public function view($id = null) {
        if (!$this->Book->exists($id)) {
            throw new NotFoundException(('Invalid book'));
        }
        $options = array('conditions' => array('Book.' . $this->Book->primaryKey => $id));
        $this->set('book', $this->Book->find('first', $options));
    }

    public function add() {
        if ($this->request->is('post')) {
            $this->Book->create();
            $data = $this->request->data;

            if (!empty($this->request->data['Book']['avatar']['name'])) {
                $file = $this->request->data['Book']['avatar'];

                $ext = substr(strtolower(strrchr($file['name'], '.')), 1);
                $arr_ext = array('jpg', 'jpeg', 'gif');
                if (in_array($ext, $arr_ext)) {
                    move_uploaded_file($file['tmp_name'], WWW_ROOT . 'img/books/' . $file['name']);
                    $data = $this->request->data;
                    $imageData = $data['Book']['avatar'];
                    $data['Book']['avatar'] = $imageData['name'];
                }
            }
            if ($this->Book->save($data)) {
                $this->Flash->success(('The book has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Flash->error(('The book could not be saved. Please, try again.'));
            }
        }
        $users = $this->Book->User->find('list');
        $this->set(compact('users'));
    }

    public function edit($id = null) {
        if (!$this->Book->exists($id)) {
            throw new NotFoundException(('Invalid book'));
        }
        if ($this->request->is(array('post', 'put'))) {
            $this->Book->create();
            $data = $this->request->data;

            if (!empty($this->request->data['Book']['avatar']['name'])) {
                $file = $this->request->data['Book']['avatar'];

                $ext = substr(strtolower(strrchr($file['name'], '.')), 1);
                $arr_ext = array('jpg', 'jpeg', 'gif');
                if (in_array($ext, $arr_ext)) {
                    move_uploaded_file($file['tmp_name'], WWW_ROOT . 'img/uploads/' . $file['name']);
                    $data = $this->request->data;
                    $imageData = $data['Book']['avatar'];
                    $data['Book']['avatar'] = $imageData['name'];
                }
            }

            if ($this->Book->save($this->request->data)) {
                $this->Flash->success(('The book has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Flash->error(('The book could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('Book.' . $this->Book->primaryKey => $id));
            $this->request->data = $this->Book->find('first', $options);
        }
        $users = $this->Book->User->find('list');
        $this->set(compact('users'));
    }

    public function delete($id = null) {
        $this->Book->id = $id;
        if (!$this->Book->exists()) {
            throw new NotFoundException(('Invalid book'));
        }
        $this->request->allowMethod('post', 'delete');
        if ($this->Book->delete()) {
            $this->Flash->success(('The book has been deleted.'));
        } else {
            $this->Flash->error(('The book could not be deleted. Please, try again.'));
        }
        return $this->redirect(array('action' => 'index'));
    }

}
