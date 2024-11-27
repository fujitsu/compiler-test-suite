module mod
  integer(4) :: sum
  integer :: i
  integer,parameter :: N=10
  integer,dimension(N),target :: go
  integer,dimension(N) :: te=(/ (i,i=1,N) /),ce
  integer,pointer,dimension(:) :: fe
end module mod

subroutine sub1
  use mod
  fe=>go
!$OMP parallel do private(sum)
  do i=1,N
     sum = 1
     ce(i) = te(i) - sum
     fe(i) = te(i) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  sum=0
  do i=1,N
     if((ce(i) /= i-1).or.(fe(i) /= i-1)) then
        write(6,*) "NG"
     end if
     sum = sum + fe(i)
  end do
  write(*,*)sum,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
