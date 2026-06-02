module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
contains
subroutine s01(c)
complex,intent(in) :: c(:)
if (any(c%re/=ca%re)) print *,101,c%re
if (any(c%im/=ca%im)) print *,102,c%im
end subroutine
function   i02(c)
complex,intent(in) :: c(:)
if (any(c%re/=ca%re)) print *,101,c%re
if (any(c%im/=ca%im)) print *,102,c%im
i02=1
end function 
end
use m1
complex :: c(4)
c(:)%re=ca(:)%re
c(:)%im=ca(:)%im
call s01(c)
if (i02(c)+i02(c)+i02(c)+i02(c)/=4) print *,201
print *,'pass'
end
