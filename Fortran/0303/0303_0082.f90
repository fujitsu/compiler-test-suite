program main
  integer,parameter  :: im=32, jm=16, km=16
  real(8), dimension(0:im-1,0:km)  :: xz_Data
  real(8), allocatable             :: xyz_Data(:,:,:)
  integer :: k

  allocate(xyz_Data(0:im-1,0:jm,0:km))

  kk =0
  do k=0,km
     kk = kk + 1
     xyz_Data(:,:,k) = kk
  end do

  do k=0,km
    xz_Data = xyz_Data(:,:,k)
  enddo
  write(6,*) sum(xz_Data)

end program main
