module m1
contains
subroutine sub(kk)
intent(inout)::kk
end subroutine
end

subroutine s1(k)
use m1
integer,intent(out):: k
interface
subroutine sub1(kk)
intent(inout)::kk
end subroutine
end interface

k=1
do n=1,3
call sub1(k)
write(108,*)k
end do
end
subroutine s2(k)
use m1
integer,intent(out):: k

k=1
do n=1,3
call sub(k)
write(108,*)k
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
subroutine sub1(kk)
intent(inout)::kk
end subroutine
subroutine chk
rewind 108
read(108,*) nn;if (nn/=1)print *,101
read(108,*) nn;if (nn/=1)print *,101
read(108,*) nn;if (nn/=1)print *,101
read(108,*) nn;if (nn/=1)print *,101
read(108,*) nn;if (nn/=1)print *,101
read(108,*) nn;if (nn/=1)print *,101
end
