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
        // $this->call(PostsTableSeeder::class);

        //insert images for post
        $posts = App\Post::all();
        foreach ($posts as $post) {
            DB::table("images")->insert([
                "src" => "image1.jpg",
                "alt" => "image1",
                "post_id" => $post->id,
            ]);
        }

    }
}
