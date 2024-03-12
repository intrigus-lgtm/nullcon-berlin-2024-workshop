import cpp

/*
 * Find all functions that have a parameter of type `std::string` and are in a sub namespace of "intrigus::testprojects"
 * Hint: Match the start of a string like this: `matches("intrigus::testprojects::%")`
 */

from Function f, UserType parameterType
where
  f.getAParameter().getType() = parameterType and
  parameterType.hasQualifiedName("std", "string") and
  f.getQualifiedName().matches("intrigus::testprojects::%")
select f
