module mod
  integer :: i,go=0
  integer,parameter :: N=10
  integer,dimension(N,N) :: sum
  integer,dimension(N) :: ce
end module mod

subroutine sub1
  use mod
!$OMP parallel do private(sum)
  do i=1,N
     sum(:,:) = 2
     ce(i) = sum(i,N+1-i) + sum(N+1-i,i)
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     if(ce(i) /= 4) then
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
