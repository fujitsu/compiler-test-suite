module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe
end module mod

subroutine sub1
  use mod
!$OMP parallel do
  do ii=1,100
     sum = 1
     fe(ii) = te(ii) - sum
     if(fe(ii) /= ii-1) then
        write(6,*) "NG"
     end if
  end do
!$OMP end parallel do
  do i=1,100
     go = go + fe(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub1

program main
  call sub1()
end program main


