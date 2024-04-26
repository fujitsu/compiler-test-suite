module mod1
type w
  integer::w1
end type
integer::n1(2)=[1,2]
contains
elemental FUNCTION eprc(nn)
  integer,intent(in) :: nn
  integer :: eprc
  eprc = nn   
END FUNCTION eprc
elemental FUNCTION cprc(nn) result(r)
  integer,intent(in) :: nn
  complex :: r
  r = cmplx(nn,nn+1)
END FUNCTION
elemental FUNCTION hprc(nn) result(r)
  integer,intent(in) :: nn
  character :: r,t(2)
  t=['1','2']
  r = t(nn)
END FUNCTION
elemental FUNCTION tprc(nn) result(r)
  integer,intent(in) :: nn
  type(w) :: r
  r = w(nn)
END FUNCTION
end module mod1

subroutine  s1
  use mod1
  integer,allocatable::xx(:)
  complex ,allocatable::x2(:)
  character ,allocatable::x3(:)
  type(w) ,allocatable::x4(:)

  allocate(xx, SOURCE = eprc(n1))
  if (any(xx/=[1,2]))print *,101
  if (any(lbound(xx)/=1))print *,102
  deallocate(xx)
  allocate(xx(2:3), SOURCE = eprc(n1))
  if (any(xx/=[1,2]))print *,103
  if (any(lbound(xx)/=2))print *,104

  allocate(x2, SOURCE = cprc(n1))
  if (any(abs(x2-[(1,2),(2,3)])>0.0001))print *,201
  if (any(lbound(x2)/=1))print *,202
  deallocate(x2)
  allocate(x2(2:3), SOURCE = cprc(n1))
  if (any(abs(x2-[(1,2),(2,3)])>0.0001))print *,203
  if (any(lbound(x2)/=2))print *,204

  allocate(x3, SOURCE = hprc(n1))
  if (any(x3/=['1','2']))print *,301
  if (any(lbound(x3)/=1))print *,302
  deallocate(x3)
  allocate(x3(2:3), SOURCE = hprc(n1))
  if (any(x3/=['1','2']))print *,303
  if (any(lbound(x3)/=2))print *,304

  allocate(x4, SOURCE = tprc(n1))
  if (any(x4%w1/=[1,2]))print *,401
  if (any(lbound(x4)/=1))print *,402
  deallocate(x4)
  allocate(x4(2:3), SOURCE = tprc(n1))
  if (any(x4%w1/=[1,2]))print *,403
  if (any(lbound(x4)/=2))print *,404
end
call s1
print *,'pass'
END 

