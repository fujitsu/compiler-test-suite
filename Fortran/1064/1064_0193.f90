module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(3,4),(5,6),(14,8)]
complex(8),parameter,dimension(*)::cm=[(1,11),(3,4),(5,6),(7,14)]
contains
subroutine s01(n)
complex :: c(4)
c=ca
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c%re
if (any(c/=cr)) print *,101,c
end subroutine
subroutine s02(n,n1)
complex :: c(4)
c=ca
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c%re
end do
if (any(c/=cr)) print *,102,c
end subroutine
subroutine s03(n,n1,c)
complex,contiguous :: c(:)
c=ca
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c%re
end do
if (any(c/=cr)) print *,103,c
end subroutine
subroutine s04(n,n1)
complex :: c(n1:4)
c=ca
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) (c(m)%re,m=n1,4)
end do
if (any(c/=cr)) print *,104,c
end subroutine
subroutine s05(n,n1,c)
complex,contiguous :: c(:)
c=ca
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c(n1:4)%re
end do
if (any(c/=cr)) print *,105,c
end subroutine
subroutine s06(n,n1)
complex :: c(n1:4)
c=ca
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) (c(m:m)%re,m=n1,4)
end do
if (any(c/=cr)) print *,106,c
end subroutine
subroutine s07(n,n1,c)
complex,contiguous,pointer,intent(in) :: c(:)
c=ca
c(n1:)%re=ca(:n1+3)%re+0
c(1:)%im=ca(n1:)%im
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c%re
end do
if (any(c/=cr)) print *,107,c
end subroutine
subroutine s08(n,n1,c)
complex,contiguous :: c(:)
c=ca
c(n1:)%re=ca(:n1+3)%re
c(1:)%im=ca(n1:)%im
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c(n1:n1)%re,c(n1+1:n1+1)%re,c(n1+2:n1+2)%re,c(n1+3:n1+3)%re
end do
if (any(c/=cr)) print *,108,c
end subroutine
subroutine s09(n,n1,c)
complex,contiguous :: c(:)
c=ca
c(:)%re=ca(:)%re
c(:)%im=ca(:)%im
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) c(n1)%re,c(n1+1)%re,c(n1+2)%re,c(n1+3)%re
end do
if (any(c/=cr)) print *,108,c
end subroutine
subroutine s10(n,n1,c)
complex :: c(n1+3)
c%re=ca%re
c%im=ca%im
do nn=1,n1
write(n,*) "11.,  ,  ,14."
rewind n
read(n,*) (c(nx)%re,c(nx+1)%re,c(nx+2)%re,c(nx+3)%re,nx=1,n1)
end do
if (any(c/=cr)) print *,108,c
end subroutine
end
use m1
complex :: c(4)
complex,target :: ct(4)
call s01(101)
call s02(102,1)
call s03(103,1,c)
call s04(102,1)
call s05(103,1,c)
call s06(102,1)
call s07(103,1,ct)
call s08(108,1,c)
call s09(109,1,c)
call s10(109,1,c)
print *,'pass'
end
