module m1
  type x
     integer::x1
  end type x
contains
  function s(d) result(l)   
    class(x)::d     
    type(x),allocatable::a,b
    logical(1)::l
    l=.true.
    a=d             
    if (a%x1/=1) l=.false.
    allocate(b,source=d)  
    if (b%x1/=1) l=.false.
  end function s
  function bind_sub() bind(c) result(ll)
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
  print *,'sngtcheck_32:pass'
end program main
