subroutine s1(n)
type x(k)
 integer,kind::k=4
 integer(k):: x=2
end type
type( x ):: a(n)
if (a(1)%x/=2) print *,101
if (a(2)%x/=2) print *,102
end
call s1(2)
print *,'pass'
end
