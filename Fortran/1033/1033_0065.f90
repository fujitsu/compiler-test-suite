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
  integer,parameter::k=2

  interface
     function fun_alloc(k) result(a)
       use mod
       type(z),pointer             ::a
       intent(in) k
     end function
  end interface

  type y
    type(z),pointer             ::ya
  end type
  type(y),pointer    ,dimension(:)::b

  allocate(b(1))
  allocate(b(1)%ya)

  b(1)%ya = fun_alloc(k)

  if (.not.associated(b)) write(6,*) "NG"
  if (.not.associated(b(1)%ya)) write(6,*) "NG"
    if (.not.allocated(b(1)%ya%za)) write(6,*) "NG"
    if (size(b(1)%ya%za)/=k+1) write(6,*) "NG"
    if (any(b(1)%ya%za/=(/(j,j=1,k+1)/))) write(6,*) "NG"
    deallocate(b(1)%ya%za)
  deallocate(b(1)%ya)
  deallocate(b)
end subroutine

function fun_alloc(k) result(a)
  use mod
  type(z),pointer             ::a
  intent(in) k
    allocate(a)
    allocate(a%za(k+1))
    a%za=(/(j,j=1,k+1)/)
end Function
