<?php

declare(strict_types=1);

namespace App\Tests\Unit;

use PHPUnit\Framework\Attributes\Test;
use PHPUnit\Framework\TestCase;

final class SmokeTest extends TestCase
{
    #[Test]
    public function it_runs_on_php_8_5_or_later(): void
    {
        self::assertGreaterThanOrEqual(80500, PHP_VERSION_ID);
    }

    #[Test]
    public function it_has_the_intl_extension_load(): void
    {
        self::assertTrue(\extension_loaded('intl'));
    }
}