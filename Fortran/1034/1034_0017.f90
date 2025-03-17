module a

contains

  subroutine do_it1(res,x,y,z,ix,iy,iz)
    double precision, dimension(:) :: res,x,y,z
    integer, dimension(:) :: ix,iy,iz
    integer :: i,tmp1,tmp2,tmp3
    do i=1,size(ix)
      tmp1 = ix(i)
      tmp2 = iy(i)
      tmp3 = iz(i)
      res(i) = x(tmp1) * y(tmp2) * z(tmp3)
    enddo
  end subroutine

  subroutine do_it2(res,x,y,z,ix,iy,iz)
    double precision, dimension(:) :: res,x,y,z
    integer, dimension(:) :: ix,iy,iz
    integer :: i
    do i=1,size(ix)
      res(i) = x(ix(i)) * y(iy(i)) * z(iz(i))
    enddo
  end subroutine

  subroutine do_it3(res,x,y,z,ix,iy,iz)
    double precision, dimension(:) :: res,x,y,z
    integer, dimension(:) :: ix,iy,iz
    res(:) = x(ix(:)) * y(iy(:)) * z(iz(:))
  end subroutine

  subroutine do_it4(res,x,y,z,ix,iy,iz)
    double precision, dimension(:) :: res,x,y,z
    integer, dimension(:) :: ix,iy,iz
    res = x(ix) * y(iy) * z(iz)
  end subroutine

end module

program main

  use a

  double precision, dimension(6) :: res,x,y,z
  integer, dimension(6) :: ix,iy,iz
  integer :: i,n_times
  real :: timei,timef

  ix = (/3,1,1,2,2,1/)
  iy = (/1,3,1,2,1,2/)
  iz = (/1,1,3,1,2,2/)
    x = (/0.310667,0.538199,0.043893,0.970025,0.570647,0.167230/)
    y = (/0.697426,0.504168,0.750070,0.073338,0.754860,0.907192/)
    z = (/0.362886,0.046136,0.259313,0.607409,0.886772,0.842248/)

  n_times = 1000000

  call cpu_time(timei)
  do i=1,n_times
    call do_it1(res,x,y,z,ix,iy,iz)
  enddo
  call cpu_time(timef)
  write(1,'(a,f7.2)') "time taken for do_it1 is ",timef-timei

  call cpu_time(timei)
  do i=1,n_times
    call do_it2(res,x,y,z,ix,iy,iz)
  enddo
  call cpu_time(timef)
  write(1,'(a,f7.2)') "time taken for do_it2 is ",timef-timei

  call cpu_time(timei)
  do i=1,n_times
    call do_it3(res,x,y,z,ix,iy,iz)
  enddo
  call cpu_time(timef)
  write(1,'(a,f7.2)') "time taken for do_it3 is ",timef-timei

  call cpu_time(timei)
  do i=1,n_times
    call do_it4(res,x,y,z,ix,iy,iz)
  enddo
  call cpu_time(timef)
  write(1,'(a,f7.2)') "time taken for do_it4 is ",timef-timei
print *,'pass'

end program main
