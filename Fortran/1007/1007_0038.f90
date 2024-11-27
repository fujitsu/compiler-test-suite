module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(5) :: te=5,fe
  type kouzou
     integer :: ki,kc
  end type kouzou
  type(kouzou),dimension(5) :: kd
end module mod

subroutine sub1
  use mod
!$OMP parallel do
  do ii=1,5
     kd(ii)%ki=ii
     kd(ii)%kc=ii+5
     sum = 1
     fe(ii) = te(ii) - sum
     kd(ii)%kc = kd(ii)%kc-fe(ii)
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,5
     go = go + kd(i)%ki + kd(i)%kc
  end do
  if(go /= 35)then
     write(6,*) "NG"
  end if

  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
