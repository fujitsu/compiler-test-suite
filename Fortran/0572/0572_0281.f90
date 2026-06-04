integer::aa(5)
call fun4(fun1(aa))
contains
function fun1(yy)
integer:: yy(5)
integer::fun1(5),a(5)
yy =20
a =10
fun1 = a
end function fun1
subroutine fun4(bb)
        integer::bb(..)
        if(any(lbound(bb) /= 1))print*,201
        if(any(ubound(bb) /=5))print*,202
        if(any(shape(bb) /=5))print*,203
        if(size(bb) /= 5)print*,204
        if(rank(bb).ne.1)print*,"101",rank(bb)
        print*,"pass"
end subroutine fun4
end
