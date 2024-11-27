module mod
  type z
    integer,allocatable,dimension(:)::za
  end type
end module

program main
  use mod
  type (z),allocatable,dimension(:)::a

  interface
    subroutine allo(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine allo
  end interface

  allocate(a(2))
  allocate(a(1)%za(2))
  allocate(a(2)%za(2))
  a(1)%za=(/1,2/)
  a(2)%za=(/2,3/)

  call allo(a)

 print *,'pass'
end program main

subroutine allo(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),            dimension(2)::b

  b=a

  deallocate(a(1)%za)
  deallocate(a(2)%za)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
end subroutine
