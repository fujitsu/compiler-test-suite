module m1
  type x
     integer,pointer::p1(:)
  end type x
 integer,pointer::p1(:)
 integer::n=2
contains
  subroutine test(w8)
    type (x),pointer:: w8(:)
    allocate(w8(2:3))
    w8(n+1)%p1(n:3)=>p1
    if (any(lbound(w8(n+1)%p1) /= n)) then
       write(*,*) 'ng :', lbound(w8(n+1)%p1, 1)
    end if
  end subroutine test
  subroutine init
    allocate(p1(24))
    p1=1
  end subroutine init
end module m1

program main
  use m1
  type (x),pointer:: w8(:)
  call init
  call test(w8)
print *,'pass'
end program main
