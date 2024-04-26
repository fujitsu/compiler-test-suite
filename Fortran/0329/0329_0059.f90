integer:: a(5) /1,2,3,4,5/
integer:: b(5) /1,2,3,4,5/

forall (i=fun(0):fun(4)-1)
  a(i+1) = a(i)
end forall

do      i=1,4
  b(i+1) = b(i)
end do

if (any((a-b)==(/0,0,1,2,3/))) then
print *,'pass'
else
print *,'ng'
endif
contains
pure function fun(x)
integer,intent(in) :: x
integer :: fun
fun=x+1
end function
end
