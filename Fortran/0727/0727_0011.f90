call test01()
call test02()
print *,'pass'
end

module mod1
contains
recursive function ifunc01(i) result(ifun)
character(len=*) i(:)
character(len=len(i)) ifun(3)
intent(in) :: i
go to 100
entry ifunc03(i) result(ifun)
ifun=i
return
100 ifun=ifunc02((/'','',''/))//i(:)(1:2)//ifunc03((/('z',j=1,3)/))//i(:)(3:3)
return 
entry ifunc02(i) result(ifun)
ifun=i
end function
end
recursive function jfunc01(i) result(ifun)
character(len=*) i(:)
character(len=len(i)) ifun(3)
intent(in) :: i
goto 100
entry jfunc03(i) result(ifun)
ifun=i
return
100 ifun=jfunc02((/('',j=1,3)/))//i(:)(1:2)//jfunc03((/('z',j=1,3)/))//i(:)(3:3)
return
entry jfunc02(i) result(ifun)
ifun=i
end function

subroutine test01()
use mod1
interface
recursive function jfunc01(i) result(ifun)
character(len=*) i(:)
character(len=len(i)) ifun(3)
intent(in) :: i
end function
end interface
character ia(3)*4
ia=ifunc01((/'1257','2267','3337'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
ia='aaaa'
ia=jfunc01((/'1257','2267','3337'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
end

module mod2
contains
recursive subroutine sub01(i,ifun) 
character(len=*) i(:)
character(len=len(i)) ifun(3)
character i0(3)*0 ,i1(3)*1
intent(in) :: i
intent(out) :: ifun
go to 100
entry sub03(i,ifun)
ifun=i
return
100 call sub03((/('z',j=1,3)/),i1)
call sub02((/('',j=1,3)/),i0)
ifun=i0//i(:)(1:2)//i1//i(:)(3:3)
return 
entry sub02(i,ifun)
ifun=i
end subroutine
end
recursive subroutine subx01(i,ifun) 
character(len=*) i(:)
character(len=len(i)) ifun(:)
character i0(3)*0 ,i1(3)*1
intent(in) :: i
intent(out) :: ifun
go to 100
entry subx03(i,ifun)
ifun=i
return
100 call subx03((/('z',j=1,3)/),i1)
call subx02((/('',j=1,3)/),i0)
ifun=i0(:)//i(:)(1:2)//i1(:)//i(:)(3:3)
return
entry subx02(i,ifun)
ifun=i
end subroutine

subroutine test02()
use mod2
interface
recursive subroutine subx01(i,ifun) 
character(len=*) i(:)
character(len=len(i)) ifun(:)
character i0*0 ,i1*1
intent(in) :: i
intent(out) :: ifun
end subroutine
end interface
character ia(3)*4
call sub01((/'1257','2267','3337'/),ia)
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
call subx01((/'1257','2267','3337'/),ia)
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
end

