module mod
  integer :: i,go=0
  real :: temp
  integer,parameter :: N = 10
  integer,dimension(N) :: sum
  integer,dimension(N) :: te=3,ce
end module mod

subroutine sub1
  use mod
!$OMP parallel do private(sum)
  do i=1,N
     sum(:) = 4
     ce(i) = te(i)**2+sum(i)**2
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     temp = i+1
     if(ce(i) /= 25) then
        print *,ce(i)
     end if
     go = go + ce(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
