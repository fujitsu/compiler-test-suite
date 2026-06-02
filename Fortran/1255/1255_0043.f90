module m1
 type x
   integer::x1
 end type
contains
  function s(d) result(l)    
    class(x)::d      
    type(X)::a
    logical(1)::l
    l=.true.
    a=d              
    if (a%x1/=1) l=.false.
  end function
  function bind_sub()  result(ll)
    type(x)::v  
    logical(1)::ll
    v%x1=1
    ll= s(v)                  
  end function
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngt_nocheck_44:pass'
end program main
