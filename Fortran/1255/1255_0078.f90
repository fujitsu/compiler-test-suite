module m1
  type x
     integer::x1
  end type x
contains
  function s(d)    result(l)
    class(x)::d      
    class(x),allocatable::a,b
    logical(1)::l
    l=.true.
    a=d              
    if (a%x1/=1) l=.false.
    allocate(b,source=d) 
    if (b%x1/=1) l=.false.
  end function s
  function bind_sub() bind(c) result(ll)
    type(x),allocatable::v     
    type(x),allocatable::a,b
    logical(1)::ll
    allocate(a)
    a%x1=1
    allocate(v,source=a)
    b=v
    ll=s(b) 
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngtcheck_26:pass'
end program main
