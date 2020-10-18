%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/scrabble-score/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(scrabble_score_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_lowercase_letter_test_'() ->
    {"lowercase letter",
     ?_assertEqual(1, scrabble_score:score("a"))}.

'2_uppercase_letter_test_'() ->
    {"uppercase letter",
     ?_assertEqual(1, scrabble_score:score("A"))}.

'3_valuable_letter_test_'() ->
    {"valuable letter",
     ?_assertEqual(4, scrabble_score:score("f"))}.

'4_short_word_test_'() ->
    {"short word",
     ?_assertEqual(2, scrabble_score:score("at"))}.

'5_short_valuable_word_test_'() ->
    {"short, valuable word",
     ?_assertEqual(12, scrabble_score:score("zoo"))}.

'6_medium_word_test_'() ->
    {"medium word",
     ?_assertEqual(6, scrabble_score:score("street"))}.

'7_medium_valuable_word_test_'() ->
    {"medium, valuable word",
     ?_assertEqual(22, scrabble_score:score("quirky"))}.

'8_long_mixed_case_word_test_'() ->
    {"long, mixed-case word",
     ?_assertEqual(41,
		   scrabble_score:score("OxyphenButazone"))}.

'9_english_like_word_test_'() ->
    {"english-like word",
     ?_assertEqual(8, scrabble_score:score("pinata"))}.

'10_empty_input_test_'() ->
    {"empty input",
     ?_assertEqual(0, scrabble_score:score([]))}.

'11_entire_alphabet_available_test_'() ->
    {"entire alphabet available",
     ?_assertEqual(87,
		   scrabble_score:score("abcdefghijklmnopqrstuvwxyz"))}.
