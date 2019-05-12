<?php

use Illuminate\Database\Seeder;

class VideosSeeder extends Seeder
{

    public function run()
    {
        //
        $faker = Faker\Factory::create();

        $limit = 30;

        for ($i = 0; $i < $limit; $i++) {
            DB::table('videos')->insert([
                'name' =>  $faker->company,
                'description' => $faker->text($maxNbChars = 60),
                'source' => 'http://cloud1.toomva.com/luyen-nghe/365-cau-luyen-nghe.mp4',
                'enable' => 1,
                'created_at' => now(),
            ]);
        }
    }
}
