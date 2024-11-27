module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(10000) :: te=5,fe=0
  type kouzou
     integer :: ki,kc
  end type kouzou
  type(kouzou),dimension(10000) :: kd
end module mod

subroutine sub1
  use mod
!$OMP parallel do
  do ii=1,10000
     kd(ii)%ki=ii
     kd(ii)%kc=ii+5
     sum = 1
     fe(ii) = te(ii) - sum
     kd(ii)%kc = kd(ii)%kc-fe(ii)
	if(ii == 10) then
	end if
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,10000
     go = go + kd(i)%ki + kd(i)%kc
  end do
  if(go /= 100020000)then
     write(6,*) "NG"
  end if

  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
