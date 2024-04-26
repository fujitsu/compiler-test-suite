
program main
  implicit none
  integer :: i,j,k,m,n,ndim
  character(len=10) arg
  type dataType
    real(8), dimension(:,:,:,:,:),contiguous,pointer :: nv
  end type dataType
  type(dataType) :: f

  arg='400'
  read(arg,*) ndim

  allocate(f%nv(-1:ndim+1,-1:ndim+1,-1:ndim+1,3,3))

  call flux(f)

  write(1,*)f%nv(1,1,1,1,1)

  deallocate(f%nv)
print *,'pass'

  contains

    subroutine flux(f)
      type(dataType),intent(inout) :: f
      !$omp parallel
      !$omp do
      do k=-1,ndim+1
         do j=-1,ndim+1
            do m=1,3
               do n=1,3
                  do i=-1,ndim+1
                     f%nv(i,j,k,m,n) = i*k
                  enddo
               enddo
            enddo
         enddo
      enddo
      !$omp end do
      !$omp end parallel
    end subroutine flux

end program main

