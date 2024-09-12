integer,pointer :: a
integer :: res
allocate(a)
a=5
res = fun(a,a)
if(res /=10)print*,101        
print*, "PASS"
contains
pure function fun(x,y)
 integer,pointer :: x
 integer,intent(inout),pointer :: y
 fun = x+y
end function
end
