module m
integer i
contains
 subroutine s(j)
  if (i/=j)write(6,*) "NG"
  if (i/=j)i=0
 end subroutine
end
subroutine ss
use m
do i=1,5
j=i
call s(j)
  if (i/=j)write(6,*) "NG"
end do
end
do n=1,10
call ss
end do
print *,'pass'
end

