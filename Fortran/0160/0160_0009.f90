program main
  implicit none
  integer :: i
    real(8), dimension(:),pointer,contiguous        :: nv

  allocate(nv(3))

      i=1
      nv(i) = i*4
  call foo_1(nv)
  call foo_2()

if (any(nv/=[4,8,12])) print *,101

print *,'pass'

  contains

    subroutine foo_1(nv)
    real(8), dimension(:),pointer,contiguous        :: nv
      i=2
      nv(i) = i*4
    end subroutine 
    subroutine foo_2(  )
      i=3
      nv(i) = i*4
    end subroutine 

end program main

