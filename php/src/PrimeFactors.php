<?php

function primeFactors($n, $primeFactor = 2)
{
    if ($n > $primeFactor && $n % $primeFactor == 0) {
        return array_merge(array($primeFactor), primeFactors($n/ $primeFactor, $primeFactor));
    } else {
        $primeFactor++;
        if ($n > $primeFactor && $n % $primeFactor == 0) {
            return array_merge(array($primeFactor), primeFactors($n / $primeFactor, $primeFactor));
        }
        return array($n);
    }
}