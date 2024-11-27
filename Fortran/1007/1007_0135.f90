module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(5) :: te=5,fe
  type kouzou
     integer :: ki
     real :: kc
  end type kouzou
  type(kouzou),dimension(5) :: kd
end module mod

subroutine sub1
  use mod
  do i=1,5
     kd(i)%ki=i
     kd(i)%kc=i+5
  end do
!$OMP parallel do private(sum)
  do i=1,5
     sum = 1
     fe(i) = te(i) - sum
     kd(i)%kc = kd(i)%kc-fe(i)
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
