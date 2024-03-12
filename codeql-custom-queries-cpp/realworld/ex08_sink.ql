import cpp
import semmle.code.cpp.dataflow.new.DataFlow

predicate isSink(DataFlow::Node sink) {
  none() // replace this line with your solution for finding the sink.
}

from DataFlow::Node sink
where isSink(sink)
select sink
