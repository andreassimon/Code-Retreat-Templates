<?php

function primeFactors($n, $primeFactor = 2)
{
    if($n <= $primeFactor) {
        return array($n);
    }
    if($n % $primeFactor == 0) {
        return array_merge(array($primeFactor), primeFactors($n / $primeFactor, $primeFactor));
    }
    return primeFactors($n, $primeFactor +1);
}
