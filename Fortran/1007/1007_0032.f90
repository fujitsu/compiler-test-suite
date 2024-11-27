module mod
  real :: sum
  integer :: i,go=0,ii
  real,dimension(10) :: te=(/ (i,i=1,10) /),fe
end module mod

subroutine sub1
  use mod
!$OMP parallel do if(te(1) == 2)
  do ii=1,10
     sum = 1
     fe(ii) = subs(te(ii),sum)
  end do
!$OMP end parallel do

  contains
    function subs(reru,hik)
      real :: subs
      real,intent(in) :: reru,hik
      subs = reru - hik
    end function subs
end subroutine sub1

subroutine sub2
  use mod
  do i=1,10
     if(fe(i) /= i-1) then
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

