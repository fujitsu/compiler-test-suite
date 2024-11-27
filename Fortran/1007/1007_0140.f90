module mod
  integer,parameter :: N=10
  real,target,dimension(N) :: sum
  integer :: i,go=0
  real,pointer,dimension(:) :: fe
  real,target,dimension(N) :: de
end module mod

subroutine sub1
  use mod
  fe=>sum
  fe=>de
!$OMP parallel do private(sum)
  do i=1,N
     sum = (/ (j,j=1,N) /)
     de(i) = sum(i)**2
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,N
     if(fe(i) /= i**2) then
        write(*,*)fe(i)
     end if
     go = go + fe(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main


