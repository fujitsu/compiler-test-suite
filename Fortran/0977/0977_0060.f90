module m
 type x
    type(x),pointer::next
    integer::v
 end type
end
subroutine s(p)
use m
type(x),pointer::p
type(x),pointer::next
next=>p%next
deallocate(p)
if (next%v/=2)write(6,*) "NG"
next=>next%next
deallocate(next)
end
use m
interface
subroutine s(p)
use m
type(x),pointer::p
type(x),pointer::next
end subroutine
end interface
type(x),pointer::p1,p2,p3
allocate(p1)
p1%v=1
allocate(p2)
p1%next=>p2
p2%v=2
allocate(p3)
p2%next=>p3
p3%v=3
call s(p1)
print *,'pass'
end
