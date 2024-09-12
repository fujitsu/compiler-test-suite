program main
call=sub()
print *,'pass'
end
pure function sub4()
sub4=1
end
module mod1
contains 
 pure function sub2()
 entry sub3()
 if (1.eq.2) call= sub6()
 sub2=1
 contains
 pure function sub6()
  if (1.eq.2) call1= sub5()
  sub6=1
 end function
 pure function sub7()
  if (1.eq.2) call2= sub6()
  sub7=1
 end function
 end function 
 pure function sub5()
 if (1.eq.2) call3= sub3()
 sub5=1
 end function
end
pure recursive function sub() result(sia)
use mod1
interface sss
 pure function sub4()
 end function 
end interface 
interface aaa
 module procedure sub2
end interface 
interface bbb
 module procedure sub3
end interface 
if (1.eq.2) call= sub()
call= sub1()
call= sub2()
call= sub3()
call= sub4()
call= sss()
call= aaa()
call= bbb()
sia=1
contains
 pure recursive function sub1() result(sib)
 if (1.eq.2) call1= sub()
 if (1.eq.2) call2= sub1()
 sib=1
 end function
end
pure recursive function asub() result(sia)
use mod1
interface sss
 pure function sub4()
 end function 
end interface 
interface aaa
 module procedure sub2
end interface 
interface bbb
 module procedure sub3
end interface 
call= sss()
call= aaa()
call= bbb()
sia=1
contains
 pure recursive function sub1() result(sib)
 if (1.eq.2) call1= asub()
 if (1.eq.2) call2= sub1()
 sib=1
 end function
end
