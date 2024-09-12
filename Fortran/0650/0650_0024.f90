call test1()
call test2()
call test3()
print *,'pass'
end      

subroutine test1()
integer a(10)
data a /1,2,3,4,5,6,7,8,9,10/
call sub01()
call sub02()
call sub03()
call sub04()
contains 
subroutine   sub01()
a=1
call sub02()
end subroutine
subroutine   sub02()
call sub03()
end subroutine
subroutine   sub03()
call sub04()
end subroutine
subroutine   sub04()
if (1.eq.2)call sub01()
end subroutine
end subroutine

subroutine test2()
call sub01()
call sub02()
call sub03()
call sub04()
contains
subroutine   sub01()
call sub02()
end subroutine
subroutine   sub02()
if (1.eq.2) call sub01()
end subroutine
subroutine   sub03()
call sub04()
end subroutine
subroutine   sub04()
if (1.eq.2)call sub01()
end subroutine
end subroutine

subroutine test3()
call sub01()
call sub02()
call sub03()
call sub04()
contains
subroutine   sub01()
call sub03()
end subroutine
subroutine   sub02()
call sub03()
end subroutine
subroutine   sub03()
if (1.eq.2)call sub01()
end subroutine
subroutine   sub04()
if (1.eq.2)call sub01()
end subroutine
end subroutine
