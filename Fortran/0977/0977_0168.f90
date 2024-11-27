module m
contains
 subroutine s(i,j)
  value::i
  if (i/=j)write(6,*) "NG"
  i=0
 end subroutine
end
subroutine ss
use m
do i=1,5
j=i
call s(i,j)
  if (i/=j)write(6,*) "NG"
end do
end
do n=1,10
call ss
end do
print *,'pass'
end

