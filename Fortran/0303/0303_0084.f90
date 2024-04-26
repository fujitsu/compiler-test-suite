program main
  integer,parameter  :: im=32, jm=16, km=16
  real(8), dimension(0:im-1,0:km)  :: xz_Data
  real(8), allocatable             :: xyz_Data(:,:,:)
  integer :: k

  allocate(xyz_Data(0:im-1,0:km,0:jm))

  xz_Data = 0
  kk =0
 do k=0,km
     kk = kk + 1
     xyz_Data(:,:,k) = kk
  end do

  xz_Data(1,:) = xyz_Data(1,:,1)
  write(6,*) sum(xz_Data)

end program main
