module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)   
    class(x)::d(:)     
    type(x),allocatable::a(:),b(:)
    a=d             
    if (a(1)%x1/=1) print *,"error-1"
    allocate(b,source=d)  
    if (b(1)%x1/=1) print *,"error-2"
  end subroutine s
  subroutine bind_sub() bind(c)
    type(x),allocatable::v(:)     
    allocate(v(1))
    v%x1=1
    call s(v)                  
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub
  print *,'sngtcheck_11:pass'
end program main
