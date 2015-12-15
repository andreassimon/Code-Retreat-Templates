<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Behat\Mink\Mink,
    Behat\Mink\Session,
    Behat\Mink\Driver\Selenium2Driver;
use SensioLabs\Behat\PageObjectExtension\Context\PageObjectContext;

// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
require_once 'src/Framework/Assert/Functions.php';
//

class Veranstaltung
{

}

class Stundenplan
{

    protected $veranstaltungen = array();

    public function getVeranstaltung($wochentag, $beginn, $ende)
    {
        return $this->veranstaltungen;
    }

    public function platziereVeranstaltung($wochentag, $beginn, $ende)
    {
        $this->veranstaltungen[] = new Veranstaltung($wochentag, $beginn, $ende);
    }
}
/**
 * Features context.
 */
class FeatureContext extends PageObjectContext
{

    protected $stundenplan;
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
//          'selenium2' => new Session(new Selenium2Driver($browser, null, $this->url)),
//      ));
//
//      $this->mink->getSession('selenium2')->getPage()->findLink('Chat')->click();

        // Vorbedingung herstellen
        $this->stundenplan = new Stundenplan();
    }

    /**
     * @Given /^am (Montag) ist von (\d+:\d+) Uhr bis (\d+:\d+) keine Veranstaltung geplant$/
     */
    public function keineVeranstaltungGeplant($wochentag, $beginn, $ende)
    {
        // Vorbedingung überprüfen
        $veranstaltungIstVorhanden = $this->stundenplan->getVeranstaltung($wochentag, $beginn, $ende);
        assertEmpty($veranstaltungIstVorhanden);
    }

    /**
     * @Given /^ich am (Montag) von (\d+:\d+) bis (\d+:\d+) die Veranstaltung "([^"]*)" platziere$/
     */
    public function ichAmMontagVonBisDieVeranstaltungPlatziere($wochentag, $beginn, $ende)
    {
        $this->stundenplan->platziereVeranstaltung($wochentag, $beginn, $ende);
    }


    /**
     * @Given /^ist am (Montag) von (\d+:\d+) Uhr bis (\d+:\d+) "([^"]*)" platziert\.$/
     */
    public function istAmMontagVonUhrBisPlatziert($wochentag, $beginn, $ende, $veranstaltungsname)
    {
        $veranstaltungIstVorhanden = $this->stundenplan->getVeranstaltung($wochentag, $beginn, $ende);
        assertNotEmpty($veranstaltungIstVorhanden);
    }

    /**
     * @Given /^am Montag ist von (\d+):(\d+) Uhr bis (\d+):(\d+) "([^"]*)" geplant$/
     */
    public function amMontagIstVonUhrBisGeplant($arg1, $arg2, $arg3, $arg4, $arg5)
    {
        throw new PendingException();
    }

    /**
     * @Given /^wird die Platzierung abgelehnt$/
     */
    public function wirdDiePlatzierungAbgelehnt()
    {
        throw new PendingException();
    }

    /**
     * @Given /^"([^"]*)" ist am Montag ist von (\d+):(\d+) Uhr bis (\d+):(\d+) platziert$/
     */
    public function istAmMontagIstVonUhrBisPlatziert($arg1, $arg2, $arg3, $arg4, $arg5)
    {
        throw new PendingException();
    }

    /**
     * @When /^ich nach "([^"]*)" suche$/
     */
    public function ichNachSuche($suchbegriff)
    {
        $this->getPage('Homepage')->open();
        $this->getPage('Homepage')->search($suchbegriff);
    }

    /**
     * @When /^steht auf der Seite "([^"]*)"$/
     */
    public function stehtAufDerSeite($text)
    {
        $this->getPage('WikiPage')->assertText($text);
    }
}
