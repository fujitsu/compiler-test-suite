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
integer,parameter::k=1
integer,parameter::x(2)=(/1,2/)
integer          ::y(2)
do i=1,5
j=i
call s(i,j)
  if (i/=j)write(6,*) "NG"
end do
call s(1,1)
call s(i+1,7)
call s(x(2),2)
  if (x(2)/=2)write(6,*) "NG"
y(2)=3
call s(y(2),3)
  if (y(2)/=3)write(6,*) "NG"
call s(k,1)
  if (k/=1)write(6,*) "NG"
end
do n=1,10
call ss
end do
print *,'pass'
end

