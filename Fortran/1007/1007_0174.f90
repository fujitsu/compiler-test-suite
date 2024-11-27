program main
  real(16) :: sum
  integer :: i,go=0
  integer,dimension(15000) :: te,fe
  te=(/ (i,i=1,15000) /)
!$OMP parallel do private(sum)
  do i=1,15000
     sum = 1
     fe(i) = te(i) - int(sum)
  end do
!$OMP end parallel do

  do i=1,15000
     if(fe(i) /= i-1) then
        write(6,*) "NG"
     end if
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main


