program main
  integer :: i
  integer,dimension(1000) :: a
!$OMP PARALLEL
  do i=1,1000
     a(i) = i
  end do
!$OMP END PARALLEL
  print *,a(1)
  print *,"ok"
end program main


