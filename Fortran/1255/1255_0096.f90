module m1
  type x
     integer::x1
  end type x
contains
  function s(d)     result(l)
    class(*)::d      
    class(x),allocatable::a
    logical(1)::l
    l=.true.
    select type(d)
    class is(x)
       a=d              
       if (a%x1/=1)  l=.false.
    class default
       print *,'err2'
    end select
  end function s
  function bind_sub() bind(c) result(ll)
    type(x)::v  
    logical(1)::ll
    v%x1=1
    ll= s(v)                  
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngtcheck_44:pass'
end program main
