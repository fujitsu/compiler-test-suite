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
allocate(a( 9))
a=(/(i,i=1,9)/)
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
end
module mod02
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mmm02 
allocate(a( 9))
a=(/(i,i=1,9)/)
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
end
module mod03
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mmm03 
use mmm03 ,b=>a
allocate(b( 9))
b=(/(i,i=1,9)/)
do i=1,9
 if (b(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub03()
use mod03
call sub()
end
