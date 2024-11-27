module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,target,dimension(100) :: te=(/ (i,i=1,100) /)
  integer,pointer,dimension(:) :: fe
end module mod

subroutine sub1
  use mod
  fe=>te
!$OMP parallel do private(sum)
  do i=1,100
     sum = 1
     fe(i) = fe(i) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,100
     if(fe(i) /= i-1) then
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


