module mod
  integer(8) :: sum
  integer :: i,ii
  real(8),dimension(13000) :: te,fe,fo
  real(8) :: go=0
end module mod

subroutine sub1
  use mod
  te=(/ (i,i=1,13000) /)
!$OMP parallel do
  do ii=1,13000
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
!$OMP parallel do
  do ii=1,13000
     sum = 1
     fo(ii) = te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub2

subroutine sub3
  use mod
  do i=1,13000
     if((fo(i)<i-1).or.(fo(i)>i-1)) then
        write(*,*)i
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


