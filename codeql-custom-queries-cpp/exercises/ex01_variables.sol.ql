import cpp

/*
 * Find all variables named "basedir" of type `std::string`.
 * Hints:
 * - Get the type of a variable using the `getType()` method.
 * - Use `hasName(name)` to check whether a type has a specific name.
 */

from Variable v
where v.getType().hasName("string") and v.getName() = "basedir"
select v
