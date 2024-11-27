call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod01
interface aaa
 module procedure sub
end interface
integer i1(10),i2(3),i3(3),i4(3)
equivalence (i1(1),i2(1))
equivalence (i1(4),i3)
equivalence (i1(7),i4)
data i2/1,2,3/
data i3/4,5,6/
data i4/7,8,9/
contains
subroutine sub()
do i=1,9
 if (i1(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub01()
use mod01
call sub()
end

module mmm02
integer i1(10),i2(3),i3(3),i4(3)
equivalence (i1(1),i2(1))
equivalence (i1(4),i3)
equivalence (i1(7),i4)
data i2/1,2,3/
data i3/4,5,6/
data i4/7,8,9/
end
module mod02
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mmm02 
do i=1,9
 if (i1(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub02()
use mod02
call sub()
end

module mmm03
integer i1(10),i2(3),i3(3),i4(3)
equivalence (i1(1),i2(1))
equivalence (i1(4),i3)
equivalence (i1(7),i4)
data i2/1,2,3/
data i3/4,5,6/
data i4/7,8,9/
end
module mod03
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mmm03 
do i=1,9
 if (i1(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub03()
use mod03
call sub()
end
