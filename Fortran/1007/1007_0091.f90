program main
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(10000) :: te,fe
  te=(/ (i,i=1,10000) /)
!$OMP parallel do
  do ii=1,10000
     sum = 1
     if(ii == 10) then
        fe(ii) = te(ii) - sum
     else
        fe(ii) = te(ii)
     end if
  end do
!$OMP end parallel do

  if(fe(10) /= 9) then
     write(6,*) "NG"
  end if
  do i=1,10000
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main


