module mod
  integer(4) :: sum
  integer :: i
  integer,target :: go=0
  integer,parameter :: N = 10
  integer,dimension(N) :: te=(/ (i,i=1,N) /),ce
  integer,pointer :: fe
end module mod

subroutine sub1
  use mod
  fe=>go
!$OMP parallel do private(sum)
  do i=1,N
     sum = 1
     ce(i) = te(i) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     if(ce(i) /= i-1) then
        write(6,*) "NG"
     end if
     fe = fe + ce(i)
  end do
  write(*,*)fe,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
