module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(10) :: te=(/ (i,i=1,10) /),fe
end module mod

subroutine sub1
  use mod
  sum = 2
!$OMP parallel do firstprivate(sum)
  do i=1,10
     fe(i) = te(i)-sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,10
     if(fe(i) /= i-2) then
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
