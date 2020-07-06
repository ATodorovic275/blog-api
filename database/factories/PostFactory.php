<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use Faker\Generator as Faker;

$factory->define(App\Post::class, function (Faker $faker) {

    $authorIds = App\Author::select("id")->get();
    $categoryIds = App\Category::select("id")->get();

    return [
        "title" => $faker->city,
        "date" => date('Y-m-d G:H:s', time()),
        "description" => $faker->city,
        "category_id" => $faker->randomElement($categoryIds),
        "author_id" => $faker->randomElement($authorIds),
    ];
});
