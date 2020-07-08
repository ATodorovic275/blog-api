<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // DB::table('categories')
        //     ->insert([
        //         ["name" => "Mobile"],
        //         ["name" => "Hardware"],
        //         ["name" => "Games"],
        //     ]);

        // $this->call(AuthorTableSeeder::class);

        //after inserted categories and authors
        $this->call(PostsTableSeeder::class);

    }
}
