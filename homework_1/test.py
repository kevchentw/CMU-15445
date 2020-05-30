from subprocess import check_output

q_list = ['q1_sample.sql', 'q2_uncommon_type.sql', 'q3_tv_vs_movie.sql', 'q4_old_is_not_gold.sql', 'q5_percentage.sql', 'q6_dubbed_smash.sql', 'q7_imdb_250.sql', 'q8_number_of_actors.sql', 'q9_movie_names.sql', 'q10_genre_counts.sql']

for q in q_list:
    print(q, end=" ")
    my_output = check_output(f"sqlite3 imdb-cmudb2019.db < {q}", shell=True)
    expected_output = check_output(f"sqlite3 imdb-cmudb2019.db < hw1-sols/{q}", shell=True)
    if my_output == expected_output:
        print("CORRECT")
    else:
        print("Wrong")
        print(my_output.decode())
        print("Expect:")
        print(expected_output.decode())