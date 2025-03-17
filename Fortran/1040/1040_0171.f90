recursive function jf01(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
ifun=jf02(a)
call sub
if (kfun()/=1)write(6,*) "NG"
return
entry jfy2(i) result(ifun)
entry jft2(i) result(ifun)
entry jf02(i) result(ifun)
ifun=i
contains
function kfun()
if (any(jf02(a)/=a))write(6,*) "NG"
kfun=1
end function
subroutine sub()
if (any(jf02(a)/=a))write(6,*) "NG"
end subroutine
end function
recursive function jfx1(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
entry jf12(i) result(ifun)
ifun=i
return
entry jfw2(i) result(ifun)
entry jfq2(i) result(ifun)
entry jf11(i) result(ifun)
ifun=jf12(a)
call sub
if (kfun()/=1)write(6,*) "NG"
contains
function kfun()
if (any(jf12(a)/=a))write(6,*) "NG"
kfun=1
end function
subroutine sub()
if (any(jf12(a)/=a))write(6,*) "NG"
end subroutine
end function
interface
recursive function jf01(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
end function
recursive function jf02(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
end function
recursive function jfx1(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
end function
recursive function jf11(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
end function
recursive function jf12(i) result(ifun)
character(len=*) i(:)
character(len=1) ifun(size(i))
character(1)::a(3)=(/'1','2','3'/)
intent(in) :: i
end function
end interface
character(1)::a(3)=(/'1','2','3'/)
if (any(jf01(a)/=a))write(6,*) "NG"
if (any(jf11(a)/=a))write(6,*) "NG"
print *,'pass'
end
