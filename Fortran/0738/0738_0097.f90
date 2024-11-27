module mod
  type z
    integer,allocatable,dimension(:)::za
  end type
end module

program main
  use mod
  type (z)            ,dimension(2)::a,b
  allocate(a(1)%za(2))
  allocate(a(2)%za(2))
  a(1)%za=(/1,2/)
  a(2)%za=(/2,3/)

  i=2
  call allo(a,i,b)

  if (allocated(a(1)%za)) write(6,*) "NG"
  if (allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"

 print *,'pass'
end program main

subroutine allo(a,i,b)
  use mod

  type(z),dimension(2)::a,b

  b(2:1:-1)=a(1:2:1)

  deallocate(a(1)%za)
  deallocate(a(2)%za)

end subroutine
