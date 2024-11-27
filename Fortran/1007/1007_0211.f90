program main
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe
!$OMP parallel do private(sum)
  do i=1,100
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
  do i=1,100
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main


