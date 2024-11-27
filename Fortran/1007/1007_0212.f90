program main
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(15000) :: te,fe
  te=(/ (i,i=1,15000) /)
!$OMP parallel do private(sum)
  do i=1,15000
     sum = 1
     if(i == 10) then
        fe(i) = te(i) - sum
     else
        fe(i) = te(i)
     end if
  end do
!$OMP end parallel do

  if(fe(10) /= 9) then
     write(6,*) "NG"
  end if
  do i=1,15000
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main


