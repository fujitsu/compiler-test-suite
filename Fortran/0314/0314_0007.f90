module mod0
integer(kind=4) :: i
integer(kind=4) :: j=0
integer(kind=4),parameter :: ans_1=5050
integer(kind=4),parameter :: ans_2=500500
end

module mod1
use mod0
contains
  subroutine sub1
  do i=1,100
    j=j+i
  enddo
  if (j .ne. ans_1) then
    print *,'ng',j
  endif
  end subroutine
end

module mod2
use mod1
contains
  subroutine sub
  call sub1
  do i=101,1000
    j=j+i
  enddo
  if (j .ne. ans_2) then
    print *,'ng',j
  endif
  end subroutine
end

use mod2
call sub
print *,'*** ok ***'
end
