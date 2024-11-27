program main
  logical(4) :: sum
  integer :: i
  logical,dimension(100) :: fe=.false.
!$OMP parallel do private(sum)
  do i=1,100
     sum = 100 < 1
     if(sum) then
        fe(i) = sum
     end if
  end do
!$OMP end parallel do

  do i=1,100
     if(fe(i)) then
        write(6,*) "NG"
     end if
  end do

  write(*,*)fe(100),"'ok'"
end program main

