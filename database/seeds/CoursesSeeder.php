<?php

use Illuminate\Database\Seeder;

class CoursesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker\Factory::create();

        $limit = 10;

        for ($i = 0; $i < $limit; $i++) {
            DB::table('courses')->insert([
                'name' => $faker->unique()->name,
                'description' => $faker->text($maxNbChars = 50),
                'lecture' => $faker->name,
                'vote' => 1,
                'enable' => 1,
                'created_at' => now(),
            ]);
        }
    }
}
