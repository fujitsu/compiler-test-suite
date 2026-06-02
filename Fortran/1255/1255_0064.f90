module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)   
    class(*)::d     
    class(x),allocatable::a,b
    select type(d)
    type is(x)
       a=d             
       if (a%x1/=1) print *,'error-1'
       allocate(b,source=d)  
       if (b%x1/=1) print *,'error-2'
    class default
       print *,'error-3'
    end select
  end subroutine s
  subroutine bind_sub() bind(c)
    class(*),pointer::cc
    type(x),allocatable::v 
    allocate(cc,mold=v)
    allocate(v)
    select type(cc)
    type is(x)
       v%x1=1
       call s(v)              
    end select
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub()
  print *,'sngtcheck_12:pass'
end program main
