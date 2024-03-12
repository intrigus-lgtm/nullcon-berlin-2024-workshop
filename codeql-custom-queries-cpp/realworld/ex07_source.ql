import cpp
import semmle.code.cpp.dataflow.new.DataFlow

predicate isSource(DataFlow::Node source) {
  none() // replace this line with your solution for finding the source.
}

from DataFlow::Node source
where isSource(source)
select source
