module m1
  type x
     integer::x1
  end type x
contains
  function s(d) result(l)    
    class(x)::d      
    type(x)::a
    logical(1)::l
    l=.true.
    a=d              
    if (a%x1/=1) l=.false.
  end function s
  function bind_sub()  result(ll)
    type(x)::v  
    logical(1)::ll
    v%x1=1
    ll= s(v)                  
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngt_nocheck_52:pass'
end program main
