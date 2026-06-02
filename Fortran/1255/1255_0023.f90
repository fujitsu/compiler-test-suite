module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)    
    class(*)::d      
    real,allocatable::a
    allocate(a)
    select type(d)
    type is(integer)
       a=d
       if (a/=1) print *,"err1"
    class default
       print *,'err2'
    end select
  end subroutine s
  subroutine bind_sub()
    integer::v  
    v=1
    call s(v)                  
  end subroutine bind_sub
end module m1
program main
  use m1
  call bind_sub
  print *,'sngt_nocheck_24:pass'
end program main
