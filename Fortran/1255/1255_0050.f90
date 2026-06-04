module m1
  type x
     integer::x1
  end type x
contains
  function s(d)  result(l)              
    class(x)::d                
    class(x),allocatable::a,b
    type(x)::dd
    logical(1)::l
    l=.true.
    dd=d
    a=dd                       
    if (a%x1/=1) l=.false.
    allocate(b,source=dd)      
    if (b%x1/=1) l=.false.
  end function s
  function bind_sub()  result(ll)
    type(x),allocatable::v     
    logical(1)::ll
    allocate(v)
    v%x1=1
    ll=s(v)                  
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngt_nocheck_51:pass'
end program main
