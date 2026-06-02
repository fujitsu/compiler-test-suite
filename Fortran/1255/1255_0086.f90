module m1
  type x
     integer::x1
  end type x
contains
  function s(d)    result(l)
    class(*)::d     
    class(x),allocatable::a,b
    logical(1)::l
    l=.true.
    select type(d)
    type is(x)
       a=d             
       if (a%x1/=1) l=.false.
       allocate(b,source=d)  
       if (b%x1/=1) l=.false.
    class default
       print *,'error-3'
    end select
  end function s
  function bind_sub() bind(c) result(ll)
    class(*),pointer::cc
    type(x),allocatable::v 
    logical(1)::ll
    allocate(cc,mold=v)
    allocate(v)
    select type(cc)
    type is(x)
       v%x1=1
       ll= s(v)              
    end select
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngtcheck_34:pass'
end program main
