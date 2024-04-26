real::y(10)
integer :: ii
interface
pure function sin(x)
real,intent(in)::x
real::sin,cos
end function

pure function cos(x)
real,intent(in)::x
real::sin,cos
end function
end interface

do ii=1,10
y(ii)=sin(1.0+real(ii)/10.0)
end do

if ( abs ( y(10) - 4.0 ) < 0.0001 .and. &
     abs ( sum(y) - 31.0 ) < 0.0001 .and. &
     abs ( cos(2.0) -6.0 ) < 0.0001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,sum(y),y
end if

end

pure function sin(x)
real,intent(in)::x
real::sin,cos
sin=x*2.0
return
entry cos(x)
cos=x*3.0
end function
