module mod
  integer(4) :: sum
  integer :: i,ii
  integer,parameter :: N=10
  integer,dimension(N),target :: go
  integer,dimension(N) :: te=(/ (i,i=1,N) /),ce
  integer,pointer,dimension(:) :: fe
end module mod

subroutine sub1
  use mod
  fe=>go
!$OMP parallel do
  do ii=1,N
     sum = 1
     ce(ii) = te(ii) - sum
     fe(ii) = te(ii) - sum
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
