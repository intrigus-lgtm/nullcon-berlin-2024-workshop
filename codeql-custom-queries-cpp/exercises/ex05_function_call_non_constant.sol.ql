import cpp

// TODO: find all calls to `system` that do not use a constant string as the first argument.
from FunctionCall fc
where
  fc.getTarget().hasGlobalOrStdName("system") and
  not fc.getArgument(0) instanceof StringLiteral
select fc
