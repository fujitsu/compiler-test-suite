module m
type t(a)
integer,kind::a
 integer(a),allocatable:: x1
end type
end
call s1
call s2
print *,'pass'
contains
subroutine s1
use m
type(t(4))::ttt(1)
if (allocated(ttt(1)%x1))print *,'err'
ttt(1)%x1=-1
if (.not.allocated(ttt(1)%x1))print *,'err'
if ((ttt(1)%x1/=-1))print *,'err'
end subroutine 
subroutine s2
use m
type(t(4))::ttt(1)
if (allocated(ttt(1)%x1))print *,'err'
allocate(ttt(1)%x1)
ttt(1)%x1=-1
if (.not.allocated(ttt(1)%x1))print *,'err'
if ((ttt(1)%x1/=-1))print *,'err'
end subroutine 
end
