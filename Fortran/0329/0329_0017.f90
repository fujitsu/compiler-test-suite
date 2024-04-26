module mdef
 interface calc
  pure function calc_int(x,y,z,a)
   integer,intent(in)::x,y,z,a
   real::calc_int
  end function
  pure function calc_real(x,y,z,a)
   real,intent(in)::x,y,z,a
   real::calc_real
  end function
 end interface calc
end module

program main
use mdef
integer :: x,y,z,a,ii,n
n=0

do ii=1,100,10
x=120+ii
y=120+ii
z=120+ii
a=100

if ( calc(x,y,z,a) - 135.0 > 0.00001  .and. &
  calc(real(x),real(y),real(z),real(a) -135.0 ) > 0.0001 ) then
  n=n+1
else
endif
end do
if ( n == 5) then
  print *,'pass'
else
  print *,'ng',n
end if
end program

pure function calc_int(x,y,z,a)
 integer,intent(in)::x,y,z,a
 real::calc_int
 calc_int=(x+y+z)/6.0+a/2.0
end function

pure function calc_real(x,y,z,a)
 real,intent(in)::x,y,z,a
 real::calc_real
 calc_real=(x+y+z)/6.0+a/2.0
end function
