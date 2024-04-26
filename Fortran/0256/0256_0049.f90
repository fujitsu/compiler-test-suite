module m  
implicit none 
   real::x(4) =[1.0,2.0,3.0,4.0]
contains      
   subroutine sub(a)
   real,contiguous::a(:)
   a = a+10
   end subroutine
end module m

program module_example     
use m
real::p(4)= [1.0,2.0,3.0,4.0]

call sub(p(1:4:2))
if (any(p /=[11.0,2.0,13.0,4.0])) print *,101
print*,"pass"
call sub(x(1:4:2))
if (any(x /=[11.0,2.0,13.0,4.0])) print *,102
call sub2(x(1:4:2))
if (any(x /=[31.0,2.0,33.0,4.0])) print *,103
contains
subroutine sub2(y)
real,contiguous::y(:)
if (any(y /=[11.0,13.0])) print *,104,y
y = y+20.0
end subroutine
end program module_example
