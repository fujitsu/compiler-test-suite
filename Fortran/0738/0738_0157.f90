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
       type(z),allocatable,dimension(:)::a
       intent(in) k
     end function
  end interface

  type y
    type(z),allocatable,dimension(:)::ya
  end type
  type(y)            ,dimension(1)::b

  allocate(b(1)%ya(k))

  b(1)%ya = fun_alloc(k)

  do i=1,k
    if (.not.allocated(b(1)%ya(i)%za)) write(6,*) "NG"
    if (size(b(1)%ya(i)%za)/=i+1) write(6,*) "NG"
    if (any(b(1)%ya(i)%za/=(/(i,j=1,i+1)/))) write(6,*) "NG"
  enddo
end subroutine

function fun_alloc(k) result(a)
  use mod
  type(z),allocatable,dimension(:)::a
  intent(in) k

  allocate(a(k))
  do i=1,k
    allocate(a(i)%za(i+1))
    a(i)%za=(/(i,j=1,i+1)/)
  enddo
end function
