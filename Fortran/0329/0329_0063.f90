pure function func(x)
  integer,intent(in)::x
  integer::func
  func=x+1
  return
end function

program main
interface
  pure function func(x)
    integer,intent(in)::x
    integer::func
  end function
end interface

integer::x,y
x=1
y=func(x)
if ( y==2 ) then
  print *,'pass'
else
  print *,'ng'
endif
end program main
