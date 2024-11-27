module mod
  integer(8) :: sum
  integer :: i,go=0,ii
  integer,dimension(15000) :: te=5,fe
  type kouzou
     integer :: ki
     integer,pointer :: kc_pt
  end type kouzou
  type(kouzou),dimension(15000) :: kd
end module mod

subroutine sub1
  use mod
  do i=1,15000
     allocate(kd(i)%kc_pt)
     kd(i)%ki=i
     kd(i)%kc_pt=i+5
  end do
!$OMP parallel do
  do ii=1,15000
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do
  do i=1,15000
     kd(i)%kc_pt = kd(i)%kc_pt-fe(i)
  end do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,15000
     go = go + kd(i)%ki + kd(i)%kc_pt
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
