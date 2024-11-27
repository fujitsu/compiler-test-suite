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
integer,pointer     :: a(:)
integer,target      :: t(10)
a=>t
t=(/(i,i=1,10)/)
do i=1,9
 if (a(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub01()
use mod01
call sub()
end

module mmm02
integer,pointer     :: a(:)
integer,target      :: t(10)
data t /1,2,3,4,5,6,7,8,9,0/
end
module mod02
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mmm02 
a=>t
do i=1,9
 if (a(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub02()
use mod02
call sub()
end

module mmm03
integer,pointer     :: a(:)
integer,target      :: t(10)
end
module mod03
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mmm03 
use mmm03 ,b=>a
b=>t 
t=(/(i,i=1,10)/)
do i=1,9
 if (b(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub03()
use mod03
call sub()
end
