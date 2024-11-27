module mod
  type z
    integer,allocatable,dimension(:)::za
  end type
end module

program main

  use mod

  type (z)            ,dimension(2)::array

  allocate(array(1)%za(2))
  allocate(array(2)%za(2))
  array(1)%za=(/1,2/)
  array(2)%za=(/2,3/)

  i=2
  call allo(array,i)

  print *,'pass'

end program main

subroutine allo(a,i)
  use mod

  type(z),dimension(2)::a,b

  b(:)=a(i)

  deallocate(a(1)%za)
  deallocate(a(2)%za)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"

end subroutine
