program main
  implicit none
  real(8),allocatable:: a(:,:,:)
  real(8),allocatable:: b(:,:,:)
  integer im,jm,km,i,j,k
  im = 1024
  jm = 1024
  km = 16
  allocate(a(im,jm,km), b(im,jm,km))
  do k = 1,km
    do j = 1,jm
      do i = 1,im
        a(i,j,k) = dble(i + 1) * dble(j + 1)
      enddo
    enddo
  enddo
  write(*,*) a(1:10,1,1)
  deallocate(a,b)
end program
