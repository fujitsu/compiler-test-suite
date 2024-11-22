module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(11000) :: te,fe
end module mod

subroutine sub1
  use mod
  te=(/ (i,i=1,11000) /)
!$OMP parallel do
  do ii=1,11000
     sum = 1
     if(ii < 11001) then
        fe(ii) = te(ii) - sum
     end if
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  do i=1,11000
     if(fe(i) > 11000) then
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

