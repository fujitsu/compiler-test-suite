module mod
  real(16) :: sum
  integer :: i,go=0,ii
  integer,dimension(5) :: te=5,fe
  type kouzou
     integer :: ki
     integer,pointer :: kc_pt
  end type kouzou
  type(kouzou),dimension(5) :: kd
end module mod

subroutine sub1
  use mod
  do i=1,5
     allocate(kd(i)%kc_pt)
     kd(i)%ki=i
     kd(i)%kc_pt=i+5
  end do
!$OMP parallel do
  do ii=1,5
     sum = 1
     fe(ii) = te(ii) - sum
  end do
!$OMP end parallel do
  do i=1,5
     kd(i)%kc_pt = kd(i)%kc_pt-fe(i)
  end do
end subroutine sub1

subroutine sub2
  use mod
!$OMP parallel do private(sum)
  do i=1,5
     sum = 1
     fe(i) = te(i) - sum
  end do
!$OMP end parallel do
  do i=1,5
     kd(i)%kc_pt = kd(i)%kc_pt-fe(i)
  end do
end subroutine sub2

subroutine sub3
  use mod
  do i=1,5
     go = go + kd(i)%ki + kd(i)%kc_pt
  end do
  if(go /= 15)then
     write(6,*) "NG"
  end if
  write(*,*)go,"'ok'"
end subroutine sub3

program main
  call sub1()
  call sub2()
  call sub3()
end program main
