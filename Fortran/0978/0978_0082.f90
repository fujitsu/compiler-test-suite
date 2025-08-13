module m
type x
  integer x1(1000)
  integer, DIMENSION(100,3,2) :: a
  integer x2(1000)
end type
contains
subroutine s0(p)
  integer,pointer,DIMENSION(:,:,:) :: p
  CALL w(p)
  CALL f(p)
contains
  SUBROUTINE f(a)
    integer, DIMENSION(30*20) :: a
    if (any(a/=-2))write(6,*) "NG"
    a(600)=1
    write(34,*)loc(a)
  END SUBROUTINE f
  SUBROUTINE w(a)
    integer, DIMENSION(30*20) :: a
    intent(in)::a
    if (any(a/=-2))write(6,*) "NG"
  END SUBROUTINE w
end subroutine
end
use m
type(x),target::v(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
  integer,pointer,DIMENSION(:,:,:) :: p
    p=>v(2)%a(:100,:,:)
    write(34,*)loc(p)
call s0(p)
if (v(2)%a(100,3,2)/=1)write(6,*) "NG"
print *,'pass'
end
