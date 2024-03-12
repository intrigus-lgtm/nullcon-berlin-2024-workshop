import cpp
import semmle.code.cpp.dataflow.new.DataFlow

predicate isSink(DataFlow::Node sink) {
  exists(FunctionCall fc |
    fc.getTarget().hasGlobalOrStdName("wordexp") and sink.asIndirectExpr(1) = fc.getArgument(0)
  )
}

from DataFlow::Node sink
where isSink(sink)
select sink
