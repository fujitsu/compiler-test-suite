module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(15000) :: te,fe=0
end module mod

subroutine sub1
  use mod
  te=(/ (i,i=1,15000) /)
!$OMP parallel do private(sum)
  do i=1,15000
     sum = 1
     if(i < 15001) then
        fe(i) = te(i) - sum
     end if
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,15000
     if(fe(i) > 15000) then
        write(6,*) "NG"
     end if
     go = go + fe(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main


