program main
  implicit none
  integer(kind=4),parameter :: x=30, y=30, z=1000
  integer(kind=4),parameter :: zsta=200, zend=400
  real(kind=8) a1,a2
  real(kind=8) work(x,y,z)
  real(kind=8) tmpwork(x,y,z)

  a1=5.0d0
  a2=50.0d0
  !$OMP PARALLEL WORKSHARE
    work(:,:,:) = 10.0d0
    tmpwork(:,:,:)=100.0d0
  !$OMP END PARALLEL WORKSHARE

  call calc_work(a1,a2,work,tmpwork,x,y,z,zsta,zend)

  print *,"pass"

end program main


subroutine calc_work(a1,a2,work,tmpwork,x,y,z,zsta,zend)
  implicit none
  real(kind=8) a1,a2
  integer(kind=4) x,y,z
  integer(kind=4) zsta,zend
  integer ret1,ret2,i,j,k
  real(kind=8) work(x,y,z)
  real(kind=8) tmpwork(x,y,z)

  !$OMP PARALLEL WORKSHARE
    work(:,:,zsta:zend) = a1*tmpwork(:,:,zsta:zend)
    tmpwork(:,:,zsta:zend) = a2*tmpwork(:,:,zsta:zend)
  !$OMP END PARALLEL WORKSHARE

  ret1 = 0
  ret2 = 0
  do i = 1, x
     do j = 1, y
        do k = zsta, zend
           if ( work(i,j,k) .ne. 500 ) then
              ret1 = 1
           endif
           if ( tmpwork(i,j,k) .ne. 5000 ) then
              ret2 = 1
           endif
        end do
     end do
  end do

  if ( ret1 .eq. 1 ) then
     print *, "NG-1"
  end if

  if ( ret2 .eq. 1 ) then
     print *, "NG-2"
  end if

end subroutine calc_work
