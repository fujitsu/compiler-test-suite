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
       type(z),pointer,dimension(:)::a
       intent(in) k
     end function
  end interface

  type y
    type(z),pointer,dimension(:,:)::ya
  end type
  type(y),allocatable,dimension(:)::b

  allocate(b(5:5))
  allocate(b(5)%ya(k,k))

  b(5)%ya(:,1) = fun_alloc(k)

  do i=1,k
    if (.not.allocated(b(5)%ya(i,1)%za)) write(6,*) "NG"
    if (     allocated(b(5)%ya(i,2)%za)) write(6,*) "NG"
    if (size(b(5)%ya(i,1)%za)/=i+1) write(6,*) "NG"
    if (any(b(5)%ya(i,1)%za/=(/(i,j=1,i+1)/))) write(6,*) "NG"
    deallocate(b(5)%ya(i,1)%za)
  enddo
  deallocate(b(5)%ya)
  deallocate(b)
end subroutine

function fun_alloc(k) result(a)
  use mod
  type(z),pointer,dimension(:)::a
  intent(in) k

  allocate(a(k))
  do i=1,k
    allocate(a(i)%za(i+1))
    a(i)%za=(/(i,j=1,i+1)/)
  enddo
end function
