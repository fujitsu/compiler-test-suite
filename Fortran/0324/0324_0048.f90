print *,'pass'
end

subroutine test01()
integer(kind=1)   :: c
integer(kind=1)   :: ca(1)
call        sub01(c)
call        sub01(ca)
call        sub01(ca(1))
end
subroutine  sub01(r)
integer(kind=1)   :: r(2) 
r=1
end subroutine
subroutine test02()
integer(kind=2)   :: c
integer(kind=2)   :: ca(1)
call        sub02(c)
call        sub02(ca)
call        sub02(ca(1))
end
subroutine  sub02(r)
integer(kind=2)   :: r(2) 
r=1
end subroutine
subroutine test03()
integer(kind=4)   :: c
integer(kind=4)   :: ca(1)
call        sub03(c)
call        sub03(ca)
call        sub03(ca(1))
end
subroutine  sub03(r)
integer(kind=4)   :: r(2) 
r=1
end subroutine
subroutine test04()
integer(kind=8)   :: c
integer(kind=8)   :: ca(1)
call        sub04(c)
call        sub04(ca)
call        sub04(ca(1))
end
subroutine  sub04(r)
integer(kind=8)   :: r(2) 
r=1
end subroutine
subroutine test05()
logical(kind=1)   :: c
logical(kind=1)   :: ca(1)
call        sub05(c)
call        sub05(ca)
call        sub05(ca(1))
end
subroutine  sub05(r)
logical(kind=1)   :: r(2) 
r=.true.
end subroutine
subroutine test06()
logical(kind=2)   :: c
logical(kind=2)   :: ca(1)
call        sub06(c)
call        sub06(ca)
call        sub06(ca(1))
end
subroutine  sub06(r)
logical(kind=2)   :: r(2) 
r=.true.
end subroutine
subroutine test07()
logical(kind=4)   :: c
logical(kind=4)   :: ca(1)
call        sub07(c)
call        sub07(ca)
call        sub07(ca(1))
end
subroutine  sub07(r)
logical(kind=4)   :: r(2) 
r=.true.
end subroutine
subroutine test08()
logical(kind=8)   :: c
logical(kind=8)   :: ca(1)
call        sub08(c)
call        sub08(ca)
call        sub08(ca(1))
end
subroutine  sub08(r)
logical(kind=8)   :: r(2) 
r=.true.
end subroutine
subroutine test09()
real   (kind=4)   :: c
real   (kind=4)   :: ca(1)
call        sub09(c)
call        sub09(ca)
call        sub09(ca(1))
end
subroutine  sub09(r)
real   (kind=4)   :: r(2) 
r=1
end subroutine
subroutine test10()
real   (kind=8)   :: c
real   (kind=8)   :: ca(1)
call        sub10(c)
call        sub10(ca)
call        sub10(ca(1))
end
subroutine  sub10(r)
real   (kind=8)   :: r(2) 
r=1
end subroutine
subroutine test11()
real   (kind=16)  :: c
real   (kind=16)  :: ca(1)
call        sub11(c)
call        sub11(ca)
call        sub11(ca(1))
end
subroutine  sub11(r)
real   (kind=16)  :: r(2) 
r=1
end subroutine
subroutine test12()
complex(kind=4)   :: c
complex(kind=4)   :: ca(1)
call        sub12(c)
call        sub12(ca)
call        sub12(ca(1))
end
subroutine  sub12(r)
complex(kind=4)   :: r(2) 
r=1
end subroutine
subroutine test13()
complex(kind=8)   :: c
complex(kind=8)   :: ca(1)
call        sub13(c)
call        sub13(ca)
call        sub13(ca(1))
end
subroutine  sub13(r)
complex(kind=8)   :: r(2) 
r=1
end subroutine
subroutine test14()
complex(kind=16)  :: c
complex(kind=16)  :: ca(1)
call        sub14(c)
call        sub14(ca)
call        sub14(ca(1))
end
subroutine  sub14(r)
complex(kind=16)  :: r(2) 
r=1
end subroutine
subroutine test15()
character(len=10) :: c
character(len=10) :: ca(1)
call        sub15(c)
call        sub15(ca)
call        sub15(ca(1))
end
subroutine  sub15(r)
character(len=10) :: r(2) 
r='a'
end subroutine
