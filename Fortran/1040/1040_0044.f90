module m1
contains
function f1(k1,k2,k3,k4) result(x)
integer x(k1,k2,k3,k4)
if (size(x)<1)then
  x=0
  return 
endif
x=reshape((/(i,i=1,k1*k2*K3*K4)/),(/k1,k2,k3,k4/))
end function
end
subroutine sub(k1,k2,k3,k4)
use m1
integer x(k1,k2,k3,k4)
if (any(ubound(f1(k1,k2,k3,k4))/=uc(k1,k2,k3,k4)))print *,'error-1',k1,k2,k3,k4
if (any(lbound(f1(k1,k2,k3,k4))/=lc(k1,k2,k3,k4)))print *,'error-2',k1,k2,k3,k4
if (   (size  (f1(k1,k2,k3,k4))/=sc(k1,k2,k3,k4)))print *,'error-3',k1,k2,k3,k4
x=f1(k1,k2,k3,k4)
if (size(x)/=0) then
 if (any(x/=reshape((/(i,i=1,k1*k2*K3*K4)/),(/k1,k2,k3,k4/))))print *,'error-4',k1,k2,k3,k4
 if (any(f1(k1,k2,k3,k4)/=reshape((/(i,i=1,k1*k2*K3*K4)/),(/k1,k2,k3,k4/))))print *,'error-5',k1,k2,k3,k4
endif
contains 
  function uc(k1,k2,k3,k4) result(r)
  integer r(4)
  r=(/max(k1,0),max(k2,0),max(k3,0),max(k4,0)/)
  end function
  function lc(k1,k2,k3,k4) result(r)
  integer r(4)
  r=1
  end function
  function sc(k1,k2,k3,k4) result(r)
  integer r
  r=max(k1,0)*max(k2,0)*max(k3,0)*max(k4,0)
  end function
end subroutine
do k1=-2,2
do k2=-2,2
do k3=-2,2
do k4=-2,2
call sub(k1,k2,k3,k4) 
end do
end do
end do
end do
print *,'pass'
end
