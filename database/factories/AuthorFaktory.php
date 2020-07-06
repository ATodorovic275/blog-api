<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Author;
use Faker\Generator as Faker;

$factory->define(Author::class, function (Faker $faker) {
    return [
        "first_name"=>$faker->firstName,
        "last_name"=>$faker->lastName
    ];
});
