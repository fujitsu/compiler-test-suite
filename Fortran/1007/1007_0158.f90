module mod
  integer(4) :: sum
  integer :: i,go=0,goo=0
  integer,dimension(10000) :: te=5,fe
  type kouzou
     integer :: ki
     integer :: kc
  end type kouzou
  type(kouzou),dimension(10000) :: kd
  type(kouzou),dimension(10000) :: kdd
end module mod

subroutine sub1
  use mod
  do i=1,10000
     kd(i)%ki=i
     kdd(i)%ki=i
     kd(i)%kc=i+5
     kdd(i)%kc=i+5
  end do
!$OMP parallel do private(sum)
  do i=1,10000
     sum = 1
     fe(i) = te(i) - sum
     kd(i)%kc = kd(i)%kc-fe(i)
     kdd(i)%kc = kdd(i)%kc-fe(i)
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,10000
     go = go + kd(i)%ki + kd(i)%kc
     goo = goo + kdd(i)%ki + kdd(i)%kc
  end do
  if((go /= 100020000).or.(goo /= 100020000))then
     write(6,*) "NG"
  end if

  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
