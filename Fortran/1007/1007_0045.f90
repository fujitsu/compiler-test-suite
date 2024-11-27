program main
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(15000) :: te,fe
  te=(/ (i,i=1,15000) /)
!$OMP parallel do
  do ii=1,15000
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do

  do i=1,15000
     if(fe(i) /= i-1) then
        write(6,*) "NG"
        write(*,*)fe(i)
     end if
     go = go + fe(i)
  end do

  write(*,*)go,"'ok'"
end program main


