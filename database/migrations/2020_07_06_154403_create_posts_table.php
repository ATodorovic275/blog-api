<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->string("title", 150);
            $table->dateTime("date");
            $table->string("description");
            $table->unsignedBigInteger('category_id');
            $table->foreign("category_id")->references("id")->on('categories');
            $table->unsignedBigInteger('author_id');
            $table->foreign("author_id")->references("id")->on("authors");
            $table->timestamp("created_at");
            $table->timestamp("updated_at")->nullable($value = true);
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
