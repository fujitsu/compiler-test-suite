module mod
  integer(4) :: sum
  integer :: i,go=0
  integer(8),dimension(100) :: te=(/ (i,i=1,100) /), &
       fe,fo,fu
end module mod

subroutine sub1
  use mod
!$OMP parallel do private(sum)
  do i=1,100
     sum = 1
     fe(i) = te(i) - sum
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
!$OMP parallel do private(sum)
  do i=1,100
     sum = 1
     fo(i) = te(i) - sum
  end do
!$OMP end parallel do
end subroutine sub2

subroutine sub3
  use mod
!$OMP parallel do private(sum)
  do i=1,100
     sum = 1
     fu(i) = te(i) - sum
  end do
!$OMP end parallel do
end subroutine sub3

subroutine sub4
  use mod
  do i=1,100
     if(fe(i) /= fo(i)) then
        if(fo(i) /= fu(i)) then
           write(6,*) "NG"
        end if
     end if
     go = go + fe(i) + fo(i) + fu(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub4

program main
  call sub1()
  call sub2()
  call sub3()
  call sub4()
end program main


