module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(15000) :: te,fe,fo
end module mod

subroutine sub1
  use mod
  te=(/ (i,i=1,15000) /)
!$OMP parallel do
  do ii=1,15000
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
!$OMP parallel do
  do ii=1,15000
     sum = 1
     fo(ii) = te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub2

subroutine sub3
  use mod
  do i=1,15000
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

