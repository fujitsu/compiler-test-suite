module mod
  integer(4) :: sum
  integer :: i,go=0,ii
  integer,dimension(11000) :: te,fe
end module mod

subroutine sub1
  use mod
  te=(/ (i,i=1,11000) /)
  fe(:) =0
!$OMP parallel do
  do ii=1,11000
     sum = 1
     if(ii.gt.8999) then
        if(ii.lt.9001) then 
           fe(ii) = te(ii) - sum
        end if
     end if
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  if(fe(9000) /= 8999) then
     write(6,*) "NG"
  end if
  do i=1,11000
     go = go + fe(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main


