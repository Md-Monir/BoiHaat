<?php

Router::connect('/', array('controller' => 'pages', 'action' => 'home'));

Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));
Router::connect('/logout', array('controller' => 'users', 'action' => 'logout'));


CakePlugin::routes();

require CAKE . 'Config' . DS . 'routes.php';
