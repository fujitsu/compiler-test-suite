module mod
  type z
    integer,allocatable,dimension(:)::za
  end type
end module

program main
  call test()
  print *,'pass'
end program main

subroutine test()
  use mod
  interface
     function fun_alloc(k) result(a)
       use mod
       type(z),pointer::a
       intent(in) k
     end function
  end interface
  integer,parameter::k=2

  type(z),pointer::b

  b => fun_alloc(k)

    if (.not.associated(b)) write(6,*) "NG"
    if (.not.allocated(b%za)) write(6,*) "NG"
    if (size(b%za)/=k+1) write(6,*) "NG"
    if (any(b%za/=(/(j,j=1,k+1)/))) write(6,*) "NG"
    deallocate(b)
end subroutine

function fun_alloc(k) result(a)
  use mod
  type(z),pointer::a
  intent(in) k
    allocate(a)
    allocate(a%za(k+1))
    a%za=(/(j,j=1,k+1)/)
end function
