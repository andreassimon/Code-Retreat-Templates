<?php

use SensioLabs\Behat\PageObjectExtension\PageObject\Page;

class Homepage extends Page
{

    /**
     * @var string $path
     */
    protected $path = '/';

    public function search($word)
    {
        $this->find('css', '#searchInput')->setValue($word);
        return $this->find('css', '#searchButton')->click();
    }
}