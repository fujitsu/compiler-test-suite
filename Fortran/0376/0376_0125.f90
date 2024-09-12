module mod
contains
  subroutine sub1(i)
    integer,value :: i
    i=1
    call sub2(i)
    if (i .eq. 2) then
    else
       print *,"NG"
    endif
  end subroutine sub1

  subroutine sub2(j)
    integer :: j
    j = 2
  end subroutine sub2
end module mod
program main
  use mod
  integer i
  i = 1
  call sub1(i)
print *,'pass'
end program main

