module mod
  real(16) :: sum
  integer :: i,go=0
  integer,dimension(10) :: te=5,fe
  type kouzou
     integer :: ki
     integer,pointer :: kc_pt
  end type kouzou
  type(kouzou),dimension(10) :: kd
end module mod

subroutine sub1
  use mod
!$OMP parallel do private(sum)
  do i=1,10
     allocate(kd(i)%kc_pt)
     kd(i)%ki=i
     kd(i)%kc_pt=i+5
     sum = 1
     fe(i) = te(i) - sum
     kd(i)%kc_pt = kd(i)%kc_pt-fe(i)
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,10
     go = go + kd(i)%ki + kd(i)%kc_pt
  end do
  if(go /= 120)then
     write(6,*) "NG"
  end if
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
