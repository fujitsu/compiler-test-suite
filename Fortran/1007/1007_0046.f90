program main
  integer(1) :: sum
  integer :: i,go=0,ii
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe
!$OMP parallel do
  do ii=1,100
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do

  do i=1,100
     if(fe(i) /= i-1) then
        write(6,*) "NG"
     end if
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main


