module m1
 type t1
   integer ::j1
   integer ::j2=2
 end type
end

recursive subroutine s1(i)
use m1
type (t1)::x
if (x%j2/=2)print *,'error'
write(1,*)loc(x)
i=i+1
if (i>5)return
call s1(i)
end

i=0
call s1(i)
call chk
print *,'pass'
end
subroutine chk
integer a(6)
rewind 1
read(1,*,err=1) a
do k=1,6
  do n=1,6
    if (k==n) cycle
    if (a(k)==a(n))print *,'error',k,n
  end do
end do
1 end
