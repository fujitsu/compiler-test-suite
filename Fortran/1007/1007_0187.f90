module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(15000) :: te,fe
end module mod

program main
  use mod
  te=(/ (i,i=1,15000) /)
!$OMP parallel do private(sum)
  do i=1,15000
     sum = 1
     fe(i) = te(i) - sum
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


