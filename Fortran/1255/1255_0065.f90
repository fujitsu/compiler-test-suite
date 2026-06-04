module m1
 type x
   integer::x1
 end type
contains
  subroutine s(d)    
    class(x)::d      
    type(X)::a
    a=d              
    if (a%x1/=1) print *,"err1"
  end subroutine
  subroutine bind_sub() bind(c)
    type(x)::v  
    v%x1=1
    call s(v)                  
  end subroutine
end
program main
use m1
call bind_sub
print *,'sngtcheck_13:pass'
end program
