<?php

require '../src/PrimeFactors.php';

class PrimeFactorsTest extends PHPUnit_Framework_TestCase
{

    /** @test */
    public function factors_of_2()
    {
        // https://phpunit.de/manual/current/en/appendixes.assertions.html
        $this->assertPrimeFactorsAre(2, array(2));
    }

    /** @test */
    public function factors_of_3()
    {
        $this->assertPrimeFactorsAre(3, array(3));
    }

    /** @test */
    public function factors_of_4()
    {
        $this->assertPrimeFactorsAre(4, array(2, 2));
    }

    /** @test */
    public function factors_of_6()
    {
        $this->assertPrimeFactorsAre(6, array(2, 3));
    }

    /** @test */
    public function factors_of_8()
    {
        $this->assertPrimeFactorsAre(8, array(2, 2, 2));
    }

    /** @test */
    public function factors_of_9()
    {
        $this->assertPrimeFactorsAre(9, array(3, 3));
    }

    public function assertPrimeFactorsAre($n, $expectedPrimeFactors)
    {
        $this->assertEquals($expectedPrimeFactors, primeFactors($n));
    }

}