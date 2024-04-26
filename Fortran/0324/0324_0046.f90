print *,'pass'
end

subroutine test01()
complex*8     c
call        sub01(c)
end
subroutine  sub01(r)
real*4  r(2) 
r=1
end subroutine
subroutine test02()
complex*8     c
call        sub02(c)
end
subroutine  sub02(r)
real*8  r(2)
r=1
end subroutine
subroutine test03()
complex*8     c
call        sub03(c)
end
subroutine  sub03(r)
real*16 r(2)
r=1
end subroutine
subroutine test04()
complex*8     c
call        sub04(c)
end
subroutine  sub04(r)
real*4  r(1)
r=1
end subroutine
subroutine test05()
complex*8     c(1)
call        sub05(c)
end
subroutine  sub05(r)
real*4  r(2)
r=1
end subroutine
subroutine test06()
complex*8     c(1)
call        sub06(c(1))
end
subroutine  sub06(r)
real*4  r(2)
r=1
end subroutine
subroutine test07()
complex*8     c(1)
call sub07(c)
end
subroutine  sub07(r)
real*8  r(2)
r=1
end subroutine
subroutine test08()
complex*8     c(1)
call        sub08(c)
end
subroutine  sub08(r)
real*16 r(2)
r=1
end subroutine
subroutine test09()
complex*8     c(1)
call        sub09(c(1))
end
subroutine  sub09(r)
real*4  r(3)
r=1
end subroutine



subroutine test11()
complex*16    c
call        sub11(c)
end
subroutine  sub11(r)
real*4  r(2) 
r=1
end subroutine
subroutine test12()
complex*16    c
call        sub12(c)
end
subroutine  sub12(r)
real*8  r(2)
r=1
end subroutine
subroutine test13()
complex*16    c
call        sub13(c)
end
subroutine  sub13(r)
real*16 r(2)
r=1
end subroutine
subroutine test14()
complex*16    c
call        sub14(c)
end
subroutine  sub14(r)
real*4  r(1)
r=1
end subroutine
subroutine test15()
complex*16    c(1)
call        sub15(c)
end
subroutine  sub15(r)
real*4  r(2)
r=1
end subroutine
subroutine test16()
complex*16    c(1)
call        sub16(c(1))
end
subroutine  sub16(r)
real*4  r(2)
r=1
end subroutine
subroutine test17()
complex*16    c(1)
call        sub17(c)
end
subroutine  sub17(r)
real*8  r(2)
r=1
end subroutine
subroutine test18()
complex*16    c(1)
call        sub18(c)
end
subroutine  sub18(r)
real*16 r(2)
r=1
end subroutine
subroutine test19()
complex*16    c(1)
call        sub19(c(1))
end
subroutine  sub19(r)
real*4  r(3)
r=1
end subroutine



subroutine test21()
complex*32    c
call        sub21(c)
end
subroutine  sub21(r)
real*4  r(2) 
r=1
end subroutine
subroutine test22()
complex*32    c
call        sub22(c)
end
subroutine  sub22(r)
real*8  r(2)
r=1
end subroutine
subroutine test23()
complex*32    c
call        sub23(c)
end
subroutine  sub23(r)
real*16 r(2)
r=1
end subroutine
subroutine test24()
complex*32    c
call        sub24(c)
end
subroutine  sub24(r)
real*4  r(1)
r=1
end subroutine
subroutine test25()
complex*32    c(1)
call        sub25(c)
end
subroutine  sub25(r)
real*4  r(2)
r=1
end subroutine
subroutine test26()
complex*32    c(1)
call        sub26(c(1))
end
subroutine  sub26(r)
real*4  r(2)
r=1
end subroutine
subroutine test27()
complex*32    c(1)
call        sub27(c)
end
subroutine  sub27(r)
real*8  r(2)
r=1
end subroutine
subroutine test28()
complex*32    c(1)
call        sub28(c)
end
subroutine  sub28(r)
real*16 r(2)
r=1
end subroutine
subroutine test29()
complex*32    c(1)
call        sub29(c(1))
end
subroutine  sub29(r)
real*4  r(3)
r=1
end subroutine
