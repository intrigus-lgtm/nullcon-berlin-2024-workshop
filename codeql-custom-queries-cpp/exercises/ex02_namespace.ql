import cpp

/*
 * Find all functions that have a parameter of type `std::string` and are in a sub namespace of "intrigus::testprojects"
 * Hint: Match the start of a string like this: `matches("intrigus::testprojects::%")`
 */

from Function f, UserType parameterType
// TODO: add where clause that solves the exercise
select f
