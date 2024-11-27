module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,parameter :: N = 10
  integer,dimension(N) :: te=(/ (i,i=1,N) /), &
       fe=(/ (i,i=1,N) /),ce
end module mod

subroutine sub1
  use mod
!$OMP parallel do
  do ii=1,N
     sum = 1
     ce(ii) = fe(N+1-ii) + te(ii) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     if(ce(i) /= N) then
        write(6,*) "NG"
     end if
     go = go + ce(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main
