module m1
contains
pure subroutine sub( dmy)
integer,intent(in):: dmy
end subroutine
end
use m1
integer::t
call sub(t)
print *,'pass'
end
