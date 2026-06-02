module m1
  type x
     integer::x1
  end type x
contains
  function s(d) result(l) 
    class(*)::d(:)
    class(x),allocatable::a(:),b(:)
    logical(1)::l
    l=.true.
    select type(d)
    class is(x)
       a=d           
       if (a(1)%x1/=1) l=.false.
       allocate(b,source=d)
       if (b(1)%x1/=1) l=.false.
    end select
  end function s
  function bind_sub()  result(ll)
    type(x),allocatable::v(:)  
    logical(1)::ll
    allocate(v(2))
    v%x1=1
    ll=s(v) 
  end function bind_sub
end module m1
program main
  use m1
  if(bind_sub().neqv..true.) print *,'error'
  print *,'sngt_nocheck_39:pass'
end program main
