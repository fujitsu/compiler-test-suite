module mod
  integer(8) :: sum
  integer :: i,go=0
  integer,dimension(15000) :: te=5,fe
  type kouzou
     real(8) :: ki
     real(8),pointer :: kc_pt
  end type kouzou
  type(kouzou),dimension(15000) :: kd
  real(8),target,dimension(15000) ::kc_tr
end module mod

subroutine sub1
  use mod
  do i=1,15000
     kd(i)%kc_pt=>kc_tr(i)
     kd(i)%ki=i
     kc_tr(i)=i+5
  end do
!$OMP parallel do private(sum)
  do i=1,15000
     sum = 1
     fe(i) = te(i) - sum
  end do
!$OMP end parallel do
  do i=1,15000
     kc_tr(i) = kc_tr(i)-fe(i)
  end do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,15000
     go = go + kd(i)%ki + kc_tr(i)
  end do
  if(go /= 225030000)then
     write(6,*) "NG"
  end if
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
