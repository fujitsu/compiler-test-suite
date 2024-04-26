program main
  implicit none
  integer :: i
  type dataType
    real(8), dimension(:),contiguous,pointer :: nv
  end type dataType
  type(dataType) :: f

  allocate(f%nv(3))

      i=1
      f%nv(i) = i*4
      i=2
      f%nv(i) = i*4
  call foo_2()

if (any(f%nv/=[4,8,12])) print *,101

print *,'pass'

  contains

    subroutine foo_1(f1)
      type(dataType),intent(inout) :: f1
      i=2
      f1%nv(i) = i*4
    end subroutine 
    subroutine foo_2(  )
      i=3
      f%nv(i) = i*4
    end subroutine 

end program main

