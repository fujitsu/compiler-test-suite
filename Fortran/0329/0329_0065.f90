pure function func(x)
  integer,intent(in)::x
  integer::func
  func=x+1
  entry funcentry(x)
  funcentry=x+2
  return
end function

program main
interface
  pure function funcentry(x)
    integer,intent(in)::x
    integer::func
  end function
end interface

integer::x,y
x=1
y=funcentry(x)
if ( y == 3 ) then
  print *,'pass'
else
  print *,'ng'
endif
end program main
