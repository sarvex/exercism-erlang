%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/forth/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(forth_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_numbers_just_get_pushed_onto_the_stack_test_'() ->
    {"numbers just get pushed onto the stack",
     ?_assertEqual([1, 2, 3, 4, 5],
		   forth:evaluate(["1 2 3 4 5"]))}.

'2_can_add_two_numbers_test_'() ->
    {"can add two numbers",
     ?_assertEqual([3], forth:evaluate(["1 2 +"]))}.

'3_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["+"]))}.

'4_errors_if_there_is_only_one_value_on_the_stack_test_'() ->
    {"errors if there is only one value on "
     "the stack",
     ?_assertError(_, forth:evaluate(["1 +"]))}.

'5_can_subtract_two_numbers_test_'() ->
    {"can subtract two numbers",
     ?_assertEqual([-1], forth:evaluate(["3 4 -"]))}.

'6_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["-"]))}.

'7_errors_if_there_is_only_one_value_on_the_stack_test_'() ->
    {"errors if there is only one value on "
     "the stack",
     ?_assertError(_, forth:evaluate(["1 -"]))}.

'8_can_multiply_two_numbers_test_'() ->
    {"can multiply two numbers",
     ?_assertEqual("\b", forth:evaluate(["2 4 *"]))}.

'9_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["*"]))}.

'10_errors_if_there_is_only_one_value_on_the_stack_test_'() ->
    {"errors if there is only one value on "
     "the stack",
     ?_assertError(_, forth:evaluate(["1 *"]))}.

'11_can_divide_two_numbers_test_'() ->
    {"can divide two numbers",
     ?_assertEqual([4], forth:evaluate(["12 3 /"]))}.

'12_performs_integer_division_test_'() ->
    {"performs integer division",
     ?_assertEqual([2], forth:evaluate(["8 3 /"]))}.

'13_errors_if_dividing_by_zero_test_'() ->
    {"errors if dividing by zero",
     ?_assertError(_, forth:evaluate(["4 0 /"]))}.

'14_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["/"]))}.

'15_errors_if_there_is_only_one_value_on_the_stack_test_'() ->
    {"errors if there is only one value on "
     "the stack",
     ?_assertError(_, forth:evaluate(["1 /"]))}.

'16_addition_and_subtraction_test_'() ->
    {"addition and subtraction",
     ?_assertEqual([-1], forth:evaluate(["1 2 + 4 -"]))}.

'17_multiplication_and_division_test_'() ->
    {"multiplication and division",
     ?_assertEqual([2], forth:evaluate(["2 4 * 3 /"]))}.

'18_copies_a_value_on_the_stack_test_'() ->
    {"copies a value on the stack",
     ?_assertEqual([1, 1], forth:evaluate(["1 dup"]))}.

'19_copies_the_top_value_on_the_stack_test_'() ->
    {"copies the top value on the stack",
     ?_assertEqual([1, 2, 2], forth:evaluate(["1 2 dup"]))}.

'20_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["dup"]))}.

'21_removes_the_top_value_on_the_stack_if_it_is_the_only_one_test_'() ->
    {"removes the top value on the stack if "
     "it is the only one",
     ?_assertEqual([], forth:evaluate(["1 drop"]))}.

'22_removes_the_top_value_on_the_stack_if_it_is_not_the_only_one_test_'() ->
    {"removes the top value on the stack if "
     "it is not the only one",
     ?_assertEqual([1], forth:evaluate(["1 2 drop"]))}.

'23_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["drop"]))}.

'24_swaps_the_top_two_values_on_the_stack_if_they_are_the_only_ones_test_'() ->
    {"swaps the top two values on the stack "
     "if they are the only ones",
     ?_assertEqual([2, 1], forth:evaluate(["1 2 swap"]))}.

'25_swaps_the_top_two_values_on_the_stack_if_they_are_not_the_only_ones_test_'() ->
    {"swaps the top two values on the stack "
     "if they are not the only ones",
     ?_assertEqual([1, 3, 2],
		   forth:evaluate(["1 2 3 swap"]))}.

'26_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["swap"]))}.

'27_errors_if_there_is_only_one_value_on_the_stack_test_'() ->
    {"errors if there is only one value on "
     "the stack",
     ?_assertError(_, forth:evaluate(["1 swap"]))}.

'28_copies_the_second_element_if_there_are_only_two_test_'() ->
    {"copies the second element if there are "
     "only two",
     ?_assertEqual([1, 2, 1], forth:evaluate(["1 2 over"]))}.

'29_copies_the_second_element_if_there_are_more_than_two_test_'() ->
    {"copies the second element if there are "
     "more than two",
     ?_assertEqual([1, 2, 3, 2],
		   forth:evaluate(["1 2 3 over"]))}.

'30_errors_if_there_is_nothing_on_the_stack_test_'() ->
    {"errors if there is nothing on the stack",
     ?_assertError(_, forth:evaluate(["over"]))}.

'31_errors_if_there_is_only_one_value_on_the_stack_test_'() ->
    {"errors if there is only one value on "
     "the stack",
     ?_assertError(_, forth:evaluate(["1 over"]))}.

'32_can_consist_of_built_in_words_test_'() ->
    {"can consist of built-in words",
     ?_assertEqual([1, 1, 1],
		   forth:evaluate([": dup-twice dup dup ;",
				   "1 dup-twice"]))}.

'33_execute_in_the_right_order_test_'() ->
    {"execute in the right order",
     ?_assertEqual([1, 2, 3],
		   forth:evaluate([": countup 1 2 3 ;", "countup"]))}.

'34_can_override_other_user_defined_words_test_'() ->
    {"can override other user-defined words",
     ?_assertEqual([1, 1, 1],
		   forth:evaluate([": foo dup ;", ": foo dup dup ;",
				   "1 foo"]))}.

'35_can_override_built_in_words_test_'() ->
    {"can override built-in words",
     ?_assertEqual([1, 1],
		   forth:evaluate([": swap dup ;", "1 swap"]))}.

'36_can_override_built_in_operators_test_'() ->
    {"can override built-in operators",
     ?_assertEqual("\f",
		   forth:evaluate([": + * ;", "3 4 +"]))}.

'37_can_use_different_words_with_the_same_name_test_'() ->
    {"can use different words with the same "
     "name",
     ?_assertEqual([5, 6],
		   forth:evaluate([": foo 5 ;", ": bar foo ;", ": foo 6 ;",
				   "bar foo"]))}.

'38_can_define_word_that_uses_word_with_the_same_name_test_'() ->
    {"can define word that uses word with "
     "the same name",
     ?_assertEqual("\v",
		   forth:evaluate([": foo 10 ;", ": foo foo 1 + ;",
				   "foo"]))}.

'39_cannot_redefine_numbers_test_'() ->
    {"cannot redefine numbers",
     ?_assertError(_, forth:evaluate([": 1 2 ;"]))}.

'40_errors_if_executing_a_non_existent_word_test_'() ->
    {"errors if executing a non-existent word",
     ?_assertError(_, forth:evaluate(["foo"]))}.

'41_dup_is_case_insensitive_test_'() ->
    {"DUP is case-insensitive",
     ?_assertEqual([1, 1, 1, 1],
		   forth:evaluate(["1 DUP Dup dup"]))}.

'42_drop_is_case_insensitive_test_'() ->
    {"DROP is case-insensitive",
     ?_assertEqual([1],
		   forth:evaluate(["1 2 3 4 DROP Drop drop"]))}.

'43_swap_is_case_insensitive_test_'() ->
    {"SWAP is case-insensitive",
     ?_assertEqual([2, 3, 4, 1],
		   forth:evaluate(["1 2 SWAP 3 Swap 4 swap"]))}.

'44_over_is_case_insensitive_test_'() ->
    {"OVER is case-insensitive",
     ?_assertEqual([1, 2, 1, 2, 1],
		   forth:evaluate(["1 2 OVER Over over"]))}.

'45_user_defined_words_are_case_insensitive_test_'() ->
    {"user-defined words are case-insensitive",
     ?_assertEqual([1, 1, 1, 1],
		   forth:evaluate([": foo dup ;", "1 FOO Foo foo"]))}.

'46_definitions_are_case_insensitive_test_'() ->
    {"definitions are case-insensitive",
     ?_assertEqual([1, 1, 1, 1],
		   forth:evaluate([": SWAP DUP Dup dup ;", "1 swap"]))}.
