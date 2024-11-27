module mod
  integer :: i,go=0
  integer,parameter :: N = 10
  integer(4),dimension(N) :: sum
  integer,dimension(N) :: te=(/ (i,i=1,N) /),ce
end module mod

subroutine sub1
  use mod
!$OMP parallel do private(sum)
  do i=1,N
     sum(:) = 1
     ce(i) = te(i) - sum(i)
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     if(ce(i) /= i-1) then
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
