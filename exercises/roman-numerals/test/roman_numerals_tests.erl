%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/roman-numerals/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(roman_numerals_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_convert_1_test_'() ->
    {"1 is a single I",
     ?_assertEqual("I", roman_numerals:roman(1))}.

'2_convert_2_test_'() ->
    {"2 is two I's",
     ?_assertEqual("II", roman_numerals:roman(2))}.

'3_convert_3_test_'() ->
    {"3 is three I's",
     ?_assertEqual("III", roman_numerals:roman(3))}.

'4_convert_4_test_'() ->
    {"4, being 5 - 1, is IV",
     ?_assertEqual("IV", roman_numerals:roman(4))}.

'5_convert_5_test_'() ->
    {"5 is a single V",
     ?_assertEqual("V", roman_numerals:roman(5))}.

'6_convert_6_test_'() ->
    {"6, being 5 + 1, is VI",
     ?_assertEqual("VI", roman_numerals:roman(6))}.

'7_convert_9_test_'() ->
    {"9, being 10 - 1, is IX",
     ?_assertEqual("IX", roman_numerals:roman(9))}.

'8_convert_27_test_'() ->
    {"20 is two X's",
     ?_assertEqual("XXVII", roman_numerals:roman(27))}.

'9_convert_48_test_'() ->
    {"48 is not 50 - 2 but rather 40 + 8",
     ?_assertEqual("XLVIII", roman_numerals:roman(48))}.

'10_convert_49_test_'() ->
    {"49 is not 40 + 5 + 4 but rather 50 - "
     "10 + 10 - 1",
     ?_assertEqual("XLIX", roman_numerals:roman(49))}.

'11_convert_59_test_'() ->
    {"50 is a single L",
     ?_assertEqual("LIX", roman_numerals:roman(59))}.

'12_convert_93_test_'() ->
    {"90, being 100 - 10, is XC",
     ?_assertEqual("XCIII", roman_numerals:roman(93))}.

'13_convert_141_test_'() ->
    {"100 is a single C",
     ?_assertEqual("CXLI", roman_numerals:roman(141))}.

'14_convert_163_test_'() ->
    {"60, being 50 + 10, is LX",
     ?_assertEqual("CLXIII", roman_numerals:roman(163))}.

'15_convert_402_test_'() ->
    {"400, being 500 - 100, is CD",
     ?_assertEqual("CDII", roman_numerals:roman(402))}.

'16_convert_575_test_'() ->
    {"500 is a single D",
     ?_assertEqual("DLXXV", roman_numerals:roman(575))}.

'17_convert_911_test_'() ->
    {"900, being 1000 - 100, is CM",
     ?_assertEqual("CMXI", roman_numerals:roman(911))}.

'18_convert_1024_test_'() ->
    {"1000 is a single M",
     ?_assertEqual("MXXIV", roman_numerals:roman(1024))}.

'19_convert_3000_test_'() ->
    {"3000 is three M's",
     ?_assertEqual("MMM", roman_numerals:roman(3000))}.
