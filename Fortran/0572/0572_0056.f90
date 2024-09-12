integer::a
call sub(a)
contains
subroutine sub(xx)
    type(*) :: xx
    call sub2(xx)
end subroutine
subroutine sub2(yy)
    type(*) :: yy
    if(rank(yy)/= 0)print*,101
    print*,"pass"
end subroutine
end
