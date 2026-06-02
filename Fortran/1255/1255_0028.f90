module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)              
    class(x)::d                
    class(x),allocatable::a,b
    type(x)::dd
    dd=d
    a=dd                       
    if (a%x1/=1) print *,'error-1'
    allocate(b,source=dd)      
    if (b%x1/=1) print *,'error-2'
  end subroutine s
  subroutine bind_sub()
    type(x),allocatable::v     
    allocate(v)
    v%x1=1
    call s(v)                  
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub
  print *,'sngt_nocheck_29:pass'
end program main
