<?php

class TheTest extends PHPUnit_Framework_TestCase
{

    /** @test */
    public function test_the_truth()
    {
        // https://phpunit.de/manual/current/en/appendixes.assertions.html
        $this->assertEquals(true, false);
    }

}
