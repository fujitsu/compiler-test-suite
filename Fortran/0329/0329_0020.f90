real::y(10),sinr
integer :: ii
interface
pure subroutine sin(x,y)
real,intent(in)::x
real,intent(out)::y
end subroutine 
end interface

do ii=1,10
call sin(1.0+real(ii)/10.0,sinr)
y(ii)=sinr
end do

if ( abs ( y(10) - 4.0 ) < 0.0001 .and. &
     abs ( sum(y) - 31.0 ) < 0.0001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,sum(y),y
end if

end

pure subroutine sin(x,y)
real,intent(in)::x
real,intent(out)::y
y=x*2.0
end subroutine
