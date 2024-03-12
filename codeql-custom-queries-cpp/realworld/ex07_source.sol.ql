import cpp
import semmle.code.cpp.dataflow.new.DataFlow
import semmle.code.cpp.security.FlowSources as FS

predicate isSource(DataFlow::Node source) { source instanceof FS::FlowSource }

from DataFlow::Node source
where isSource(source)
select source
