program main
  logical(1) :: sum
  integer :: i
  logical,dimension(100) :: fe
!$OMP parallel do private(sum)
  do i=1,100
     sum = .false.
     fe(i) = sum
  end do
!$OMP end parallel do

  do i=1,100
     if(fe(i)) then
        write(6,*) "NG"
     end if
  end do

  write(*,*)fe(100),"'ok'"
end program main
