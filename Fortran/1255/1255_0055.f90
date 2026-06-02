module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d) 
    class(x)::d   
    class(x),allocatable::a,b
    a=d
    if (a%x1/=1) print *,'error-1'
    allocate(b,source=d)  
    if (b%x1/=1) print *,'error-2'
  end subroutine s
  subroutine bind_sub() bind(c)
    type(x),allocatable::v     
    type(x),allocatable::a
    allocate(a)
    a%x1=1
    allocate(v,source=a)
    call s(v)              
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub
  print *,'sngtcheck_03:pass'
end program main
