
program main
  implicit none
  integer :: i,j,k,m,n,ndim
  character(len=10) arg
  type dataType
    real(8), dimension(:),contiguous,pointer :: nv
  end type dataType
  type(dataType) :: f

arg='4'
k=1
  read(arg,*) ndim

  allocate(f%nv(-1:ndim+1))

  call flux()

  write(1,*)f%nv(1)

  deallocate(f%nv)
print *,'pass'

  contains

    subroutine flux()
      !$omp parallel
      !$omp do
                  do i=-1,ndim+1
                     f%nv(i) = i*k
                  enddo
      !$omp end do
      !$omp end parallel
    end subroutine flux

end program main

