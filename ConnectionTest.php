<?php
require './src/Database.php';
use PHPUnit\Framework\TestCase;

class ConnectionTest extends TestCase
{
    /** @group db */
    public function testMockProductsAreReturned()
    {
        $mockRepo = $this->createMock(Database::class);

        $mockProductsArray = [
            ['id' => 1, 'name' => 'Acme Radio Knobs'],
            ['id' => 2, 'name' => 'Apple iPhone'],
        ];

        $mockRepo->method('fetchProducts')->willReturn($mockProductsArray);

        $products = $mockRepo->fetchProducts();

        $this->assertEquals('Acme Radio Knobs', $products[0]['name']);
    }
}