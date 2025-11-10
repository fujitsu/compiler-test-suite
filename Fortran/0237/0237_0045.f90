module mod1
type w
  integer::w1
end type
contains
FUNCTION eprc(k)
  integer :: eprc(k:3)
  eprc = [1,2]
END FUNCTION eprc
FUNCTION cprc(k) result(r)
  complex :: r(k:3)
  r = [(1,2),(3,4)]
END FUNCTION
FUNCTION hprc(k) result(r)
  character :: r(k:3)
  r = ['1','2']
END FUNCTION
FUNCTION tprc(k) result(r)
  type(w) :: r(k:3)
  r = [w(1),w(2)]
END FUNCTION
end module mod1

subroutine  s1
  use mod1
  integer,allocatable::xx(:)
  complex ,allocatable::x2(:)
  character ,allocatable::x3(:)
  type(w) ,allocatable::x4(:)

k=2
  allocate(xx, SOURCE = eprc(k))
  if (any(xx/=[1,2]))print *,101
  if (any(lbound(xx)/=1))print *,102
  deallocate(xx)
  allocate(xx(2:3), SOURCE = eprc(k))
  if (any(xx/=[1,2]))print *,103
  if (any(lbound(xx)/=2))print *,104

  allocate(x2, SOURCE = cprc(k))
  if (any(abs(x2-[(1,2),(3,4)])>0.0001))print *,201
  if (any(lbound(x2)/=1))print *,202
  deallocate(x2)
  allocate(x2(2:3), SOURCE = cprc(k))
  if (any(abs(x2-[(1,2),(3,4)])>0.0001))print *,203
  if (any(lbound(x2)/=2))print *,204

  allocate(x3, SOURCE = hprc(k))
  if (any(x3/=['1','2']))print *,301
  if (any(lbound(x3)/=1))print *,302
  deallocate(x3)
  allocate(x3(2:3), SOURCE = hprc(k))
  if (any(x3/=['1','2']))print *,303
  if (any(lbound(x3)/=2))print *,304

  allocate(x4, SOURCE = tprc(k))
  if (any(x4%w1/=[1,2]))print *,401
  if (any(lbound(x4)/=1))print *,402
  deallocate(x4)
  allocate(x4(2:3), SOURCE = tprc(k))
  if (any(x4%w1/=[1,2]))print *,403
  if (any(lbound(x4)/=2))print *,404
end
call s1
print *,'pass'
END 

