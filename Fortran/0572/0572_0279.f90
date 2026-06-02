
character::aa(5)
aa ='a'
call fun4(fun1(aa))
print*,"pass"
contains
function fun1(yy)
character::fun1(5),yy(5)
        fun1 =yy
end function fun1
subroutine fun4(xx)
        character::xx(..)
        if(any(lbound(xx) /= 1))print*,201
        if(any(ubound(xx) /=5))print*,202
        if(any(shape(xx) /=5))print*,203
        if(size(xx) /= 5)print*,204
        if(rank(xx).ne.1)print*,"101"
end subroutine fun4
end
