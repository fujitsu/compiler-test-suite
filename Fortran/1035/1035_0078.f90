module m
type a
  integer ::x3
end type
type aa
  type(a),pointer::x1,x2(:)
  integer ::x3
end type
interface s
 module procedure saa,sa
end interface
contains
subroutine saa(p)
type(aa)::p(1)
if (p(1)%x3/=1)then
  write(6,*) "NG"
  print *,'error-1'
endif
end subroutine
subroutine sa(p)
type(a)::p(1)
if (p(1)%x3/=1)then
  write(6,*) "NG"
  print *,'error-2'
endif
end subroutine
function fs()
type(aa),pointer::fs
allocate(fs)
fs%x3=1
end function
function fa()
type(aa),pointer::fa(:)
allocate(fa(1))
fa(1)%x3=1
end function
end
use m
type(aa),pointer::x1,x2(:)
type(aa)        ::y1,y2(1)
allocate(x1);x1%x3=1
call s((/x1/))
y1=x1
call s((/y1/))
allocate(x2(1));x2(1)%x3=1
call s((/x2/))
y2=(/x1/)
call s((/y2/))
call s((/x2(1)/))
y2=(/x2(1)/)
call s((/y2/))
allocate(x1%x1);x1%x1%x3=1
call s((/x1%x1/))
allocate(y1%x1)
y1%x1=x1%x1
call s((/y1%x1/))
allocate(x2(1)%x2(1));x2(1)%x2(1)%x3=1
call s((/x2(1)%x2(1)/))
allocate(y2(1)%x2(1))
y2(1)%x2=(/x1%x1/)
call s((/y2(1)%x2/))
call s((/x2(1)%x2(1)/))
y2(1)%x2=(/x2(1)%x2(1)/)
call s((/y2(1)%x2/))
call s((/fs()/))
y1=fs()
call s((/y1/))
y2=(/fs()/)
call s((/y2/))
call s((/fa()/))
y2=fa()
call s((/y2/))
y2=(/fa()/)
call s((/y2/))
print *,'pass'
end
