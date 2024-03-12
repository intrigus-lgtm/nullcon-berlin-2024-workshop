import cpp
import semmle.code.cpp.dataflow.new.TaintTracking

// TODO: Define a taint tracking configuration.
// Hint: type "taint" and then use autocomplete
// Reuse `isSource` and `isSink` from the previous exercises.
from DataFlow::Node source, DataFlow::Node sink
where any() // replace this line with a check for a flow path from source to sink
select source, "This value flows from a remote source to a 'wordexp' call that executes commands."
