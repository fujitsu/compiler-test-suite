pure function func(x)
  integer,intent(in)::x
  integer::func
  func=x+1
  return
end function

program main
integer::x,y
integer::func
x=1
y=func(x)
if ( y==2 ) then
  print *,'pass'
else
  print *,'ng',y
endif
end program main
