subroutine s0(k)
type x
  integer x1(1000)
  integer, DIMENSION(3,100,2) :: a
  integer x2(1000)
end type
type(x),target::v(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
type(x),target::vv(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
  integer,pointer,DIMENSION(:,:,:) :: p,pp
  if (k==1)then
    p=>v(2)%a(:,:10,:)
    pp=>vv(2)%a(:,:10,:)
  else
    p=>v(2)%a(:,:,:2)
  endif
  CALL w(p,pp)
  CALL f(p,pp)
if (v(2)%a(3,10,2)/=1)write(6,*) "NG"
if (vv(2)%a(3,10,2)/=1)write(6,*) "NG"
contains
  SUBROUTINE f(a,aa)
    integer, DIMENSION(30*2) :: a,aa
    if (any(a/=-2))write(6,*) "NG"
    if (any(aa/=-2))write(6,*) "NG"
    a(60)=1
    aa(60)=1
  END SUBROUTINE f
  SUBROUTINE w(a,aa)
    integer, DIMENSION(30*2) :: a,aa
    intent(in)::a,aa
    if (any(a/=-2))write(6,*) "NG"
    if (any(aa/=-2))write(6,*) "NG"
  END SUBROUTINE w
end
call s0(1)
print *,'pass'
end
