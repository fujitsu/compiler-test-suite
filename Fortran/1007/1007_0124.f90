module mod
  integer(4) :: sum
  integer :: i,go=0
  integer,dimension(100) :: te=(/ (i,i=1,100) /),fe
end module mod

subroutine sub1
  use mod
!$OMP parallel do private(sum)
  do i=1,100
     sum = 1
     fe(i) = subs(te(i),sum)
  end do
!$OMP end parallel do
  contains
    function subs(reru,hik)
      integer :: subs
      integer,intent(in) :: reru,hik
      subs = reru - hik
    end function subs
end subroutine sub1

subroutine sub2
  use mod
  do i=1,100
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
