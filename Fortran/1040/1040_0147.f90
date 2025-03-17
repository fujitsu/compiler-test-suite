recursive function jfunc01(i) result(ifun)
character(len=*) i(:)
character(len=len(i)) ifun(3)
character(0)::a(3)
intent(in) :: i
ifun=jfunc02(a)
return
entry jfunc02(i) result(ifun)
ifun=i
end function
interface
recursive function jfunc01(i) result(ifun)
character(len=*) i(:)
character(len=len(i)) ifun(3)
intent(in) :: i
end function
end interface
character(0)::b(3)
if (any(jfunc01(b)/=b))print *,'error'
print *,'pass'
end
