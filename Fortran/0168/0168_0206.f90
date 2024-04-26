module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
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
complex :: c(4)
write(1, '("1:",z16.16)') loc(c(1))
c(:)%re=ca(:)%re
c(:)%im=ca(:)%im
call   s01(c%im)
if (i02(c%im)+i02(c%im)+i02(c%im)+i02(c%im)/=4) print *,201
print *,'pass'
end
