module m
contains
recursive function jf01(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
ifun=jf02(a)
return
entry jf02(i) result(ifun)
ifun=i
end function
recursive function jfx1(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
entry jf12(i) result(ifun)
ifun=i
return
entry jf11(i) result(ifun)
ifun=jf12(a)
end function
end 
use m
character(1)::a(3)=(/'1','2','3'/)
if (any(jf01(a)/=a))write(6,*) "NG"
if (any(jf11(a)/=a))write(6,*) "NG"
print *,'pass'
end
