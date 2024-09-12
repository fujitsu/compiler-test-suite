program main
print *,'pass'
end 
pure subroutine sub4()
end subroutine
module mod1
contains 
 pure subroutine sub2()
 entry sub3()
 call sub6()
 contains
 pure subroutine sub6()
  call sub5()
 end subroutine
 pure subroutine sub7()
  call sub6()
 end subroutine
 end subroutine 
 pure subroutine sub5()
 call sub3()
 end subroutine
end
pure recursive subroutine sub()
use mod1
interface sss
 pure subroutine sub4()
 end subroutine 
end interface 
interface aaa
 module procedure sub2
end interface 
interface bbb
 module procedure sub3
end interface 
call sub()
call sub1()
call sub2()
call sub3()
call sub4()
call sss()
call aaa()
call bbb()
contains
 pure recursive subroutine sub1()
 call sub()
 call sub1()
 end subroutine
end
pure recursive subroutine asub()
use mod1
interface sss
 pure subroutine sub4()
 end subroutine 
end interface 
interface aaa
 module procedure sub2
end interface 
interface bbb
 module procedure sub3
end interface 
call sss()
call aaa()
call bbb()
contains
 pure recursive subroutine sub1()
 call asub()
 call sub1()
 end subroutine
end
