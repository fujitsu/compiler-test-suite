module m
type x
  integer x1(1000)
  character*3, DIMENSION(3,100,2) :: a
  integer x2(1000)
end type
contains
subroutine s0(p)
  character(*),pointer,DIMENSION(:,:,:) :: p
  CALL w(p)
  CALL f(p)
contains
  SUBROUTINE f(a)
    character(*), DIMENSION(30*2) :: a
    if (any(a/='123'))write(6,*) "NG"
    a(60)='abc'
  END SUBROUTINE f
  SUBROUTINE w(a)
    character(*), DIMENSION(30*2) :: a
    intent(in)::a
    if (any(a/='123'))write(6,*) "NG"
  END SUBROUTINE w
end subroutine
end
use m
type(x),target::v(3)=(/x(1,'2',3),x(1,'123',3),x(1,'2',3)/)
  character(3),pointer,DIMENSION(:,:,:) :: p
    p=>v(2)%a(:,:10,:)
call s0(p)
if (v(2)%a(3,10,2)/='abc')write(6,*) "NG"
print *,'pass'
end
