module mod
  type z
    integer,allocatable,dimension(:)::za
  end type
end module

function fun() result(a)
  use mod
  type(z),pointer,dimension(:)::a

  allocate(a(1))
  allocate(a(1)%za(1))
  a(1)%za=1
end function

program main
  call test()
  print *,'pass'
end program main

subroutine test()
  use mod
  interface
     function fun() result(a)
       use mod
       type(z),pointer,dimension(:)::a
     end function
  end interface

  type(z),pointer,dimension(:)::b

  allocate(b(1))
  b = fun()
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (any(b(1)%za/=1)) write(6,*) "NG"
end subroutine
