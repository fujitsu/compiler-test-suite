
module m1
  type dataType
    real(8), dimension(:),contiguous,pointer :: nv
  end type dataType
  type(dataType) :: f
end
program main
use m1
  implicit none
  integer :: i,j,k,m,n,ndim
  character(len=10) arg

k=1
arg='4'
  read(arg,*) ndim

  allocate(f%nv(-1:ndim+1))

  call flux(f)

  write(1,*)f%nv(1)

  deallocate(f%nv)
print *,'pass'

  contains

    subroutine flux(f)
      type(dataType),intent(inout) :: f
      !$omp parallel
      !$omp do
                  do i=-1,ndim+1
                     f%nv(i) = i*k
                  enddo
      !$omp end do
      !$omp end parallel
    end subroutine flux

end program main

