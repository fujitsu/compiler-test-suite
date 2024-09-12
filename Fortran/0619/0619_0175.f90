module m1
type x3
  integer::y1
  integer,allocatable::y2(:)
  integer::y3
end type
contains
recursive subroutine s1()
type(x3),pointer::p3
type(x3)        ::v3
allocate(p3)
if (allocated(v3%y2))print *,1103
if (allocated(p3%y2))print *,1104
if (v3%y1/=0)print *,1109
if (p3%y1/=0)print *,1110
if (v3%y3/=0)print *,1111
if (p3%y3/=0)print *,1112
p3=x3(999,[999],999)
deallocate(p3)
end subroutine
recursive subroutine s2(k)
type(x3),pointer::p3
type(x3)        ::v3
integer a(size([(kk,kk=1,k)]))
allocate(p3)
if (allocated(v3%y2))print *,103
if (allocated(p3%y2))print *,104
if (v3%y1/=0)print *,109
if (p3%y1/=0)print *,110
if (v3%y3/=0)print *,111
if (p3%y3/=0)print *,112
if (any(a/=0))print *,113
a=999
p3=x3(999,[999],999)
deallocate(p3)
end subroutine
end
use m1
do i=1,10
call s1()
call s2(2)
end do
print *,'pass'
end
