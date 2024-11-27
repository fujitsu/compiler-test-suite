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
     function fun_alloc(k,ii) result(a)
       use mod
       type(z)                         ::a
       intent(in) k,ii
     end function
  end interface

  type y
    type(z),allocatable,dimension(:,:)::ya
  end type
  type(y)            ,dimension(5)::b

  allocate(b(5)%ya(k,k))
  do i1=1,k
  do i2=1,k
    b(5)%ya(i1,i2) = fun_alloc(i1+i2,i1*10+i2)
  enddo
  enddo

  do i1=1,k
  do i2=1,k
    if (.not.allocated(b(5)%ya(i1,i2)%za)) write(6,*) "NG"
    if (size(b(5)%ya(i1,i2)%za)/=i1+i2) write(6,*) "NG"
    if (any(b(5)%ya(i1,i2)%za/=i1*10+i2)) write(6,*) "NG"
    deallocate(b(5)%ya(i1,i2)%za)
  enddo
  enddo
  deallocate(b(5)%ya)
end subroutine

function fun_alloc(k,ii) result(a)
  use mod
  type(z)                         ::a
  intent(in) k,ii

  allocate(a%za(k))
  a%za=ii
end function
