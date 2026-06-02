module m1
  type x
     integer::x1
  end type x
contains
  subroutine s(d)  
    class(*)::d    
    class(x),allocatable::a(:),b(:)
    select type(d)
    class is(x)
       allocate(a(1),mold=d)
       a=d         
       if (a(1)%x1/=1) print *,'error-1'
       allocate(b(1),source=d) 
       if (b(1)%x1/=1) print *,'error-2'
    end select
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
  print *,'sngt_nocheck_18:pass'
end program main
