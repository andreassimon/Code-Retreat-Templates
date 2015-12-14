<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

//use Behat\Mink\Mink,
//    Behat\Mink\Session,
//    Behat\Mink\Driver\Selenium2Driver;
//
//use Selenium\Client as SeleniumClient;

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class FeatureContext extends BehatContext
{
    /**
     * Initializes context.
     * Every scenario gets its own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
//      $this->url = 'http://example.com';
//
//      $this->mink = new Mink(array(
//          'selenium2' => new Session(new Selenium2Driver($browser, null, $url)),
//      ));
//
//      $this->mink->getSession('selenium2')->getPage()->findLink('Chat')->click();
    }

//
// Place your definition and hook methods here:
//
//    /**
//     * @Given /^I have done something with "([^"]*)"$/
//     */
//    public function iHaveDoneSomethingWith($argument)
//    {
//        doSomethingWith($argument);
//    }
//
}
