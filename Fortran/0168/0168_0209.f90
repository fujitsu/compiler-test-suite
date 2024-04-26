module m1
complex,parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex,parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
type x
  complex,pointer :: x1(:)
  complex,allocatable :: x2(:)
end type
type xx
  integer:: re
  type(x):: im
end type
type (xx):: z
parameter(kk1=kind(z%im%x1),kk2=kind(z%im%x1))
contains
subroutine s01(c)
real   ,intent(in) :: c(4)
if (any(c/=ca%im)) print *,101,c
end subroutine
function   i02(c)
real ,intent(in) :: c(4)
write(1, '("2:",z16.16)') loc(c(1))
if (any(c/=ca%im)) print *,102,c
i02=1
end function 
end
use m1
if (kk1/=4) print *,301,kk1
if (kk2/=4) print *,302,kk2
if (kind(z%im%x1)/=4) print *,401
if (kind(z%im%x2)/=4) print *,402
allocate(z%im%x1,z%im%x2,source=cr)
write(1, '("1:",z16.16)') loc(z%im%x1)
z%im%x1(:)%re=ca(:)%re
z%im%x1(:)%im=ca(:)%im
z%im%x2(:)%re=ca(:)%re
z%im%x2(:)%im=ca(:)%im
call   s01(z%im%x1%im)
call   s01(z%im%x2%im)
if (i02(z%im%x1%im)+i02(z%im%x1%im)+i02(z%im%x1%im)+i02(z%im%x1%im)/=4) print *,201
if (i02(z%im%x2%im)+i02(z%im%x2%im)+i02(z%im%x2%im)+i02(z%im%x2%im)/=4) print *,202
print *,'pass'
end
