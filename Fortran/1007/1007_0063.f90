program main
  logical(4) :: sum
  integer :: i,ii
  logical,dimension(100) :: fe

!$OMP parallel do
  do ii=1,100
     sum = .false.
     fe(ii) = sum
  end do
!$OMP end parallel do

  do i=1,100
     if(fe(i)) then
        write(6,*) "NG"
     end if
  end do

  write(*,*)fe(100),"'ok'"
end program main

