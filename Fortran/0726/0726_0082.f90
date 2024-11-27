 call s1
 print *,'pass'
 end
module m
contains
subroutine sp(x,n)
real,dimension(:)::x
n=size(x)
end subroutine sp
end module m
subroutine s1
use m
real,dimension(2)::x=(/1.,2./)
n=100
call sp(pack(x,(/.false.,.false./)),n)
if (n/=0)write(6,*) "NG"
end
