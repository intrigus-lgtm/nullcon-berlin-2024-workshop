import cpp

/*
 * Find all member variables whose name ends with "json_string".
 */

from MemberVariable mv
where mv.getName().matches("%json_string")
select mv
