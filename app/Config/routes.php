<?php

Router::connect('/', array('controller' => 'pages', 'action' => 'home'));

Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));

CakePlugin::routes();

require CAKE . 'Config' . DS . 'routes.php';
