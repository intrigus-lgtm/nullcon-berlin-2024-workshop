/**
 * @kind path-problem
 * @id cpp/nullcon-24/remote-to-wordexp
 */

import cpp
import semmle.code.cpp.dataflow.new.TaintTracking
import semmle.code.cpp.security.FlowSources as FS
import RemoteToWordexpFlow::PathGraph

module RemoteToWordexp implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) { source instanceof FS::FlowSource }

  predicate isSink(DataFlow::Node sink) {
    exists(FunctionCall fc |
      fc.getTarget().hasGlobalOrStdName("wordexp") and sink.asIndirectExpr(1) = fc.getArgument(0)
    )
  }
}

module RemoteToWordexpFlow = TaintTracking::Global<RemoteToWordexp>;

from RemoteToWordexpFlow::PathNode source, RemoteToWordexpFlow::PathNode sink
where RemoteToWordexpFlow::flowPath(source, sink)
select source, source, sink,
  "This value flows from a remote source to a 'wordexp' call that executes commands."
