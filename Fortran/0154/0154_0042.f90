subroutine s1
type x(k)
 integer,kind::k=4
 integer(k):: x=2
end type
type( x(2) ):: a
end
call s1
print *,'pass'
end
