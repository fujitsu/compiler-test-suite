module m1
integer::a,b
private::a
interface
module subroutine s1
end
!module subroutine s2
!end
end interface
contains
subroutine s
b=a
end
end
submodule (m1) smod1
contains
module subroutine s1
a=1
end 
end
use m1
call s1
call s
if (b/=1) print *,201
!call s2
!call s
!if (b/=2) print *,202
print *,'sngg295i : pass'
end

