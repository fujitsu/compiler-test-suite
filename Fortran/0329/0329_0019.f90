real::y(10)
integer :: ii
interface
pure function sin(x)
real,intent(in)::x
real::sin
end function
end interface

do ii=1,10
y(ii)=sin(1.0+real(ii)/10.0)
end do

if ( abs ( y(10) - 4.0 ) < 0.0001 .and. &
     abs ( sum(y) - 31.0 ) < 0.0001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,sum(y),y
end if

end

pure function sin(x)
real,intent(in)::x
real::sin
sin=x*2.0
end function
