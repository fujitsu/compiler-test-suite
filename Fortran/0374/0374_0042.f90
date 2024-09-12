call test01()
call test02()
print *,"pass"
end

subroutine test01()
interface
subroutine sub() bind(c)
end subroutine
function ifun(i) bind(c)
end function
end interface
call sub()
i=ifun(i)
end subroutine
subroutine sub() bind(c)
end subroutine
function ifun(i) bind(c)
ifun=1
i=1
end function


recursive subroutine test02()
call ent()
return
entry ent() bind(c)
end subroutine

module mod
contains 
recursive subroutine test02()
call ent1()
return
entry ent1() bind(c)
end subroutine
end module

module moda
contains 
recursive subroutine test02()
call ent2()
return
entry ent2() bind(c)
end subroutine
end module

