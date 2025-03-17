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

print *,'pass'
end
