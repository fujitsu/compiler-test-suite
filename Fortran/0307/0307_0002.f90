module mdef
contains
pure subroutine ifx(x,y)
real,intent(in)::x
real,intent(out) :: y
y=x+1
end subroutine 
end module

use mdef
real::i(2)
integer::ii
i=2
i(2)=3
do ii=1,2
call sub(ifx,i(ii))
end do

if ( abs ( i(1) - 7.0 ) < 0.0001 .and.  &
     abs ( i(2) - 8.0 ) < 0.0001 ) then
  print *,'pass'
else
  print *,'ng',i
end if
end

subroutine sub(ifx,i)
real :: i,i2,ii
do ii=1,2
i2=i+ii
call ifx(i2,i)
end do
end subroutine
