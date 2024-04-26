program main
  implicit none
  integer,parameter  :: im=32, jm=16, km=16
  real(8), dimension(0:im-1,0:km)  :: xz_Data
  real(8), allocatable             :: xyz_Data(:,:,:)
  integer :: k

  allocate(xyz_Data(0:im-1,1:jm,0:km))

  do k=0,km
     xyz_Data(:,:,k) = k
  end do

  xz_Data = xyz_Data(:,1,:)

  write(6,*) xz_Data(0,1)

end program main
