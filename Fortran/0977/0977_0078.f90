module m1
 contains
  function f(c,i)
  character(len=i)::f
  character(len=*)::c
  f=c
  end function
end
use m1
character x1*4,x2(4)*3,x3*7
character*4 smt,arg
smt(arg)=arg
j1=1;j4=4
call s2('abcd',0)
call s2('abcd'(j1:j4),0)
x1='abcd'
call s1(x1,1)
if (x1/='1234')write(6,*) "NG"
x2(3)(3:3)='a';x2(4)='bcd'
call s1(x2(3)(3:3),1)
if (x2(3)(3:3)//x2(4)/='1234')write(6,*) "NG"
x3(4:)='abcd'
call s1(x3(4:),1)
if (x3(4:)/='1234')write(6,*) "NG"
x2(2)(2:3)='ab';x2(3)(1:2)='cd'
call s1(x2(2)(2:2),1)
if (x2(2)(2:3)//x2(3)(:2)/='1234')write(6,*) "NG"
x3(2:5)='abcd'
call s1(x3(2:5),1)
if (x3(2:5)/='1234')write(6,*) "NG"
call s2(f('abcd',4),0)
x2(4)(3:3)='a';x2(2)='bcd'
call s2(x2(4)(3:3)//x2(2),0)
x3='  abcd'
call s2(adjustl(x3),0)
call s2(adjustl('  abcd   '),0)
call s2(smt('abcd'),0)
print *,'pass'
 contains
  subroutine s2(a,i)
   character a(4)
   if (a(1)//a(2)//a(3)//a(4)/='abcd')write(6,*) "NG"
  end subroutine
  subroutine s1(a,i)
   character a(4)
   if (a(1)//a(2)//a(3)//a(4)/='abcd')write(6,*) "NG"
   if (i==1)a(1:4)=(/'1','2','3','4'/)
  end subroutine
end
