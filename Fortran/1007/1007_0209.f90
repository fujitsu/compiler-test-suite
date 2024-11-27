module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe
end module mod

subroutine sub1
  use mod
  fe(:) =0
!$OMP parallel do private(sum)
  do i=1,100
     sum = 1
     if(i.gt.89) then
        if(i.lt.91) then 
           fe(i) = te(i) - sum
        end if
     end if
  end do
!$OMP end parallel do
end subroutine sub1

subroutine sub2
  use mod
  if(fe(90) /= 89) then
     write(6,*) "NG"
  end if
  do i=1,100
     go = go + fe(i)
  end do
  write(*,*)go,"'ok'"
end subroutine sub2

program main
  call sub1()
  call sub2()
end program main


