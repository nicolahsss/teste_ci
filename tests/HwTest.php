<?php

namespace Tests;

use App\Hw;
use PHPUnit\Framework\TestCase;

class HwTest extends TestCase
{
    public function testText()
    {
        $hw = new Hw();
        $this->assertEquals('Olá Mundo!!!', $hw->text());
    }
}
