call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod01
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
parameter (i=1)
integer,dimension(10) :: arr
integer,dimension(10) :: brr
parameter (arr=1)
parameter (brr=(/1,2,3,4,5,6,7,8,9,10/))
integer,dimension(10) :: crr
crr=brr+arr+i
end subroutine
end
subroutine sub01()
use mod01
call sub()
end

module mod02
interface aaa
 module procedure sub
end interface
contains
subroutine sub(i1,i2,i3,i4,i5)
integer i1(10)
integer i2(size(i1))
integer i3(*)
integer i4(:)
integer i5
i1=1
i2=2
i3(1:10)=3
i4=4
i5=5
end subroutine
end
subroutine sub02()
use mod02
integer,dimension(10) :: ia1,ia2,ia3,ia4
call sub(ia1,ia2,ia3,ia4,ia5)
if (ia5.ne.5) write(6,*) "NG"
if (any(ia4.ne.4)) write(6,*) "NG"
if (any(ia3.ne.3)) write(6,*) "NG"
if (any(ia2.ne.2)) write(6,*) "NG"
if (any(ia1.ne.1)) write(6,*) "NG"
end

module mod03
interface aaa
 module procedure sub
end interface
contains
subroutine sub(i1,i2,i3,i4,i5)
integer i1(i5)
integer i2(1+i5-1)
integer i3(i5-9:i5+0)
integer i4(i1(1))
integer i5
i1=1
i2=2
i3(1:10)=3
i4=4
i5=5
end subroutine
end
subroutine sub03()
use mod03
integer,dimension(10) :: ia1,ia2,ia3,ia4
ia5=10;ia1=10
call sub(ia1,ia2,ia3,ia4,ia5)
if (ia5.ne.5) write(6,*) "NG"
if (any(ia4.ne.4)) write(6,*) "NG"
if (any(ia3.ne.3)) write(6,*) "NG"
if (any(ia2.ne.2)) write(6,*) "NG"
if (any(ia1.ne.1)) write(6,*) "NG"
end
