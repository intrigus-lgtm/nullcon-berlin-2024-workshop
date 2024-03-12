import cpp

/*
 * Find all calls to functions with name PrintValue that do not take place
 * inside functions with names starting with Dump .
 * Hint: Use auto-completion on FunctionCall to find the predicate that checks whether
 * a call is enclosed in a function.
 */

from FunctionCall fc
where
  fc.getTarget().getName() = "PrintValue" and
  not fc.getEnclosingFunction().getName().matches("Dump%")
select fc
