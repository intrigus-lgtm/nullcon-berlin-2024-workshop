import cpp

/*
 * Find all calls to functions with name PrintValue that do not take place
 * inside functions with names starting with Dump .
 * Hint: Use auto-completion on FunctionCall to find the predicate that checks whether
 * a call is enclosed in a function.
 */

from FunctionCall fc
// TODO: add where clause that solves the exercise
select fc
