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
       type(z),allocatable,dimension(:)::a
       intent(in) k
     end function
  end interface
  integer,parameter::k=2

  type(z),allocatable,dimension(:)::b

  allocate(b(k))
  b = fun_alloc(k)

  do i=1,k
    if (.not.allocated(b(i)%za)) write(6,*) "NG"
    if (size(b(i)%za)/=i+1) write(6,*) "NG"
    if (any(b(i)%za/=(/(i,j=1,i+1)/))) write(6,*) "NG"
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
