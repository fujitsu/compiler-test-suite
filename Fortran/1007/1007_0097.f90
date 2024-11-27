module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  real,dimension(100) :: te=(/ (i,i=1,100) /),fe,fo
end module mod

subroutine sub1
  use mod
!$OMP parallel do
  do ii=1,100
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
!$OMP parallel do
  do ii=1,100
     sum = 1
     fo(ii) = te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub2

subroutine sub3
  use mod
  do i=1,100
     if(fe(i) /= fo(i)) then
        write(6,*) "NG"
     end if
     go = go + fe(i) + fo(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub3

program main
  call sub1()
  call sub2()
  call sub3()
end program main


