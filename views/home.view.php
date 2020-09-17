<?php
require_once('libs/smarty/Smarty.class.php');

class HomeView {

    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

}
