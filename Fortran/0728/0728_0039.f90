call sub01()
call sub02()
call sub03()
print *,'pass' 
end

module mod01_base
private aaa
interface aaa
 module procedure sub
end interface
interface bbb
 module procedure sub
end interface
contains
 subroutine sub(ii)
 ii=100
 end subroutine
end module
module mod01a ; use mod01_base ; end module
module mod01b ; use mod01_base ; end module
subroutine sub01()
use mod01a
use mod01b
call sub(ii)
if (ii.ne.100) write(6,*) "NG"
call bbb(ii)
if (ii.ne.100) write(6,*) "NG"
end 

 subroutine sub(ii)
 ii=100
 end subroutine
 subroutine sub1(ii)
 ii=101
 end subroutine
module mod02_base
private aaa
interface aaa
 subroutine sub1(ii)
 end subroutine
end interface
interface bbb
 subroutine sub(ii)
 end subroutine
end interface
end module
module mod02a ; use mod02_base ; end module
module mod02b ; use mod02_base ; end module
subroutine sub02()
use mod02a
use mod02b
call bbb(ii)
if (ii.ne.100) write(6,*) "NG"
end

module mod03_base
private aaa,bbb
interface aaa
 subroutine sub1(ii)
 end subroutine
end interface
contains
subroutine sub(ii)
ii=100
end subroutine 
end module
module mod03a ; use mod03_base ;
interface bbb
 module procedure sub
end interface
end module
module mod03b ; use mod03_base ; 
interface bbb
 module procedure sub
end interface
end module
subroutine sub03()
use mod03a
use mod03b
call bbb(ii)
if (ii.ne.100) write(6,*) "NG"
end
