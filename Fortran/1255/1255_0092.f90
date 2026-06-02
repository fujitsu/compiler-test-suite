module m1
  type x
     integer::x1
  end type x
contains
  function s(d) result(l)    
    class(*)::d(:)      
    real,allocatable::a
    logical(1)::l
    l=.true.
    select type(d)
    type is(integer)
       a=d(1)
       if (a/=1) l=.false.
    class default
       print *,'err2'
    end select
  end function s
  function bind_sub() bind(c)  result(ll)
    integer::v(1)  
    logical(1)::ll
    v=1
    ll=s(v)                  
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngtcheck_40:pass'
end program main
