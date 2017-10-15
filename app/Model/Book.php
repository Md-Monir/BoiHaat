<?php

App::uses('AppModel', 'Model');

class Book extends AppModel {

    public $belongsTo = array(
        'User' => array(
            'className' => 'User',
            'foreignKey' => 'user_id',
            'conditions' => '',
            'fields' => '',
            'order' => 'book.created DESC'
        )
    );
}
