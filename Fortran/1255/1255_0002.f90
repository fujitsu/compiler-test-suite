module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)           
    class(*)::d             
    class(x),allocatable::a,b
    select type(d)
    class is(x)
       a=d                     
       if (a%x1/=1) print *,'error-1'
       allocate(b,source=d)      
       if (b%x1/=1) print *,'error-2'
    end select
  end subroutine s
  subroutine bind_sub() bind(c)
    class(x),allocatable::v   
    class(*),allocatable::w   
    allocate(v)
    v%x1=1
    allocate(w,source=v)
    w=v
    call s(w) 
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub
  print *,'sngt_nocheck_03:pass'
end program main
