module m1
contains
function   ksub(kk)
ksub=2
end function    
end

subroutine s1(k)
use m1
integer,intent(out):: k
interface
function  ksub1(kk)
end function
end interface

k=1
do n=1,3
nn= ksub1(k)
write(110,*)k
end do
end
subroutine s2(k)
use m1
integer,intent(out):: k

k=1
do n=1,3
nn= ksub(k)
write(110,*)k
end do
end
interface
subroutine s1(k)
integer,intent(out):: k
end subroutine
subroutine s2(k)
integer,intent(out):: k
end subroutine
end interface
call s1(kk)
call s2(kk)
call chk
print *,'pass'
end
function  ksub1(kk)
ksub1=2
end 
subroutine chk
rewind 110
read(110,*) nn;if (nn/=1)print *,101
read(110,*) nn;if (nn/=1)print *,101
read(110,*) nn;if (nn/=1)print *,101
read(110,*) nn;if (nn/=1)print *,101
read(110,*) nn;if (nn/=1)print *,101
read(110,*) nn;if (nn/=1)print *,101
end
