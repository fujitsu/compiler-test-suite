module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)    
    class(x)::d      
    type(x)::a
    a=d              
    if (a%x1/=1) print *,"error-2"
  end subroutine s
  subroutine bind_sub()
    class(x),allocatable::v  
    allocate(v)
    v%x1=1
    call s(v)                  
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub
  print *,'sngt_nocheck_05:pass'
end program main
