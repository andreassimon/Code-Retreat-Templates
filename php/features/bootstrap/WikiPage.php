<?php

use SensioLabs\Behat\PageObjectExtension\PageObject\Page;

class WikiPage extends Page
{

    /**
     * @var string $path
     */
    protected $path = '/';

    public function assertText($text)
    {
        return assertContains($text, $this->getText());
    }
}