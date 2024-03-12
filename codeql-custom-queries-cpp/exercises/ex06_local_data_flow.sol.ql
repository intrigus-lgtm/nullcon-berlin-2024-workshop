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
where
  fc.getTarget().hasGlobalOrStdName("system") and
  not exists(StringLiteral sl | DataFlow::localExprFlow(sl, fc.getArgument(0)))
select fc
