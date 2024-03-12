import cpp
import semmle.code.cpp.dataflow.new.DataFlow

/*
 * Exercise 6:
 * The query from exercise 5 found calls like this `system(argv[1])` , but also
 * found constructs like this:
 * ```cpp
 * char *cmd = "id";
 * system(cmd);
 * ```
 * We also want to ignore string literals that are indirect arguments to system.
 * HINT: use local data flow.
 */

from FunctionCall fc
// TODO: add where clause that solves the exercise
select fc
