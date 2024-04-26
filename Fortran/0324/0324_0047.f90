print *,'pass'
end

subroutine test01()
real*4        c
call        sub01(c)
end
subroutine  sub01(r)
complex*8     r(2)
r=1
end subroutine
subroutine test02()
real*4        c
call        sub02(c)
end
subroutine  sub02(r)
complex*16    r(2)
r=1
end subroutine
subroutine test03()
real*4        c
call        sub03(c)
end
subroutine  sub03(r)
complex*32    r(2)
r=1
end subroutine
subroutine test04()
real*4        c(2)
call        sub04(c)
end
subroutine  sub04(r)
complex*8     r(2)
r=1
end subroutine
subroutine test05()
real*4        c(2)
call        sub05(c)
end
subroutine  sub05(r)
complex*16    r(2)
r=1
end subroutine
subroutine test06()
real*4        c(2)
call        sub06(c)
end
subroutine  sub06(r)
complex*32    r(2)
r=1
end subroutine

subroutine test11()
real*8        c
call        sub11(c)
end
subroutine  sub11(r)
complex*8     r(2)
r=1
end subroutine
subroutine test12()
real*8        c
call        sub12(c)
end
subroutine  sub12(r)
complex*16    r(2)
r=1
end subroutine
subroutine test13()
real*8        c
call        sub13(c)
end
subroutine  sub13(r)
complex*32    r(2)
r=1
end subroutine
subroutine test14()
real*8        c(2)
call        sub14(c)
end
subroutine  sub14(r)
complex*8     r(2)
r=1
end subroutine
subroutine test15()
real*8        c(2)
call        sub15(c)
end
subroutine  sub15(r)
complex*16    r(2)
r=1
end subroutine
subroutine test16()
real*8        c(2)
call        sub16(c)
end
subroutine  sub16(r)
complex*32    r(2)
r=1
end subroutine

subroutine test21()
real*16       c
call        sub21(c)
end
subroutine  sub21(r)
complex*8     r(2)
r=1
end subroutine
subroutine test22()
real*16       c
call        sub22(c)
end
subroutine  sub22(r)
complex*16    r(2)
r=1
end subroutine
subroutine test23()
real*16       c
call        sub23(c)
end
subroutine  sub23(r)
complex*32    r(2)
r=1
end subroutine
subroutine test24()
real*16       c(2)
call        sub24(c)
end
subroutine  sub24(r)
complex*8     r(2)
r=1
end subroutine
subroutine test25()
real*16       c(2)
call        sub25(c)
end
subroutine  sub25(r)
complex*16    r(2)
r=1
end subroutine
subroutine test26()
real*16       c(2)
call        sub26(c)
end
subroutine  sub26(r)
complex*32    r(2)
r=1
end subroutine
