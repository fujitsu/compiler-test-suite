call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
print *,'pass'
end

module mod01
contains
recursive function ifun01(i1,i2,i3) result(iii)
integer iii(int(i2))
iii=(/(i,i=1,i2)/)
end function
recursive function ifun02(i1,i2,i3) result(iii)
integer iii(10)
iii=ifun01(1,10,2)
end function
end
subroutine sub01()
use mod01
integer a(10)
a=ifun02(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
a=ifun01(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
end

module mod02
contains
recursive function ifun0a(i1,i2,i3) result(iii)
integer iii(int(i2))
entry ifun01(i1,i3,i2) result(iii)
iii=(/(i,i=1,i2)/)
end function
recursive function ifun02(i1,i2,i3) result(iii)
integer iii(10)
iii=ifun01(1,1,10)
end function
end
subroutine sub02()
use mod02
integer a(10)
a=ifun02(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
a=ifun01(1,100,10)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
end

module mod03
contains
recursive function ifun02(i1,i2,i3) result(iii)
integer iii(10)
iii=ifun01(1,1,10)
end function
recursive function ifun0a(i1,i2,i3) result(iii)
integer iii(int(i2))
entry ifun01(i1,i3,i2) result(iii)
iii=(/(i,i=1,i2)/)
end function
end
subroutine sub03()
use mod03
integer a(10)
a=ifun02(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
a=ifun01(1,100,10)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
end

module mod04
contains
recursive function ifun02(i1,i2,i3) result(iii)
integer iii(10)
iii=ifun01(1,10,1)
end function
recursive function ifun01(i1,i2,i3) result(iii)
integer iii(int(i2))
iii=(/(i,i=1,i2)/)
end function
end
subroutine sub04()
use mod04
integer a(10)
a=ifun02(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
a=ifun01(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
end

module mod05
contains
recursive function ifun01(i1,i2,i3) result(iii)
integer iii(int(i2))
iii=(/(i,i=1,i2)/)
return
entry ifun02(i1,i3,i2) result(iii)
if (i1.eq.1) then
  iii=ifun01(7,10,100)
else
  iii=(/(i+1,i=1,i2)/)
endif
return
end function
end
subroutine sub05()
use mod05
integer a(10)
a=ifun02(1,1,10)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
a=ifun02(3,1,10)
do i=1,10 ; if (a(i).ne.i+1) print *,'sub01 ng' ; end do
a=ifun01(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
end

module mod06
contains
recursive function ifun01(i1,i2,i3) result(iii)
integer iii(int(i2))
iii=(/(i,i=1,i2)/)
return
entry ifun02(i1,i3,i2) result(iii)
if (i1.eq.1) then
  iii=ifun02(7,100,10)
else
  iii=(/(i+1,i=1,i2)/)
endif
return
end function
end
subroutine sub06()
use mod06
integer a(10)
a=ifun02(1,1,10)
do i=1,10 ; if (a(i).ne.i+1) print *,'sub01 ng' ; end do
a=ifun02(3,1,10)
do i=1,10 ; if (a(i).ne.i+1) print *,'sub01 ng' ; end do
a=ifun01(1,10,1)
do i=1,10 ; if (a(i).ne.i) print *,'sub01 ng' ; end do
end

module mod07
contains
recursive function ifun01(i1,i2,i3) result(iii)
integer iii(int(i2))
iii=ifun02(7,100,10)
return
entry ifun02(i1,i3,i2) result(iii)
iii=(/(i+1,i=1,i2)/)
return
end function
end
subroutine sub07()
use mod07
integer a(10)
a=ifun02(1,1,10)
do i=1,10 ; if (a(i).ne.i+1) print *,'sub01 ng' ; end do
a=ifun01(1,10,1)
do i=1,10 ; if (a(i).ne.i+1) print *,'sub01 ng' ; end do
end
