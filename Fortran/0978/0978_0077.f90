subroutine s0(k)
type x
  integer x1(1000)
  integer, DIMENSION(3,100,2) :: a
  integer x2(1000)
end type
type(x),target::v(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
  integer,pointer,DIMENSION(:,:,:) :: p
  if (k==1)then
    p=>v(2)%a(:,:10,:)
  else
    p=>v(2)%a(:,:,:2)
  endif
  CALL w(p)
  CALL f(p)
if (v(2)%a(3,10,2)/=1)write(6,*) "NG"
contains
  SUBROUTINE f(a)
    integer, DIMENSION(30*2) :: a
    if (any(a/=-2))write(6,*) "NG"
    a(60)=1
  END SUBROUTINE f
  SUBROUTINE w(a)
    integer, DIMENSION(30*2) :: a
    intent(in)::a
    if (any(a/=-2))write(6,*) "NG"
  END SUBROUTINE w
end
call s0(1)
print *,'pass'
end
