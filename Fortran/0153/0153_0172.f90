subroutine s1
type t1
 type (ty(2,4)),pointer::next
end type
type ty(k,i)
 integer,kind::k
 integer,len:: i
 character(k):: a(i)
end type
end
call s1
print *,'pass'
end
