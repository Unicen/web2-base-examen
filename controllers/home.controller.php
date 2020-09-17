<?php
require_once 'models/centro.model.php';
require_once 'views/home.view.php';

class HomeController {

    private $model;
    private $view;

    public function __construct() {

    }

    public function example() {
        echo "home works!";
    }

}

