module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe=0
end module mod

subroutine sub1
  use mod
!$OMP parallel do
  do ii=1,100
     sum = 1
     if(ii > 90) then
        fe(ii) = te(ii) - sum
     end if
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,100
     if(fe(i) > 99) then
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


