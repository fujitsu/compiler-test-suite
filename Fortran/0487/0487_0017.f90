module m1
character(1),allocatable:: v1
character(2),allocatable:: v2
character(3),allocatable:: v3
character(4),allocatable:: v4
character(5),allocatable:: v5
character(0),allocatable:: v0
contains
subroutine s1(var,n)
character(*),allocatable:: var
allocate(character(*)::var)
var='12345'
if (var%len /= n) print *,1001
if (var /= '12345'(1:n)) print *,1002
end subroutine
end
use m1
call s1(v1,v1%len)
call s1(v2,v2%len)
call s1(v3,v3%len)
call s1(v0,v0%len)
call s1(v4,v4%len)
call s1(v5,v5%len)
print *,'pass'
end
