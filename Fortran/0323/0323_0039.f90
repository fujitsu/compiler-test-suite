call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
call test13()
call test14()
call test14a()
call test15()
call test16()
call test17()
call test18()
call test19()
call test20()
call test21()
call test22()
call test23()
call test24()
call test25()
call test26()
call test27()

print *,'snfmm543 pass'
end
subroutine test01()
integer(kind=1) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test01 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test01 ubound err : u -> ',u(1)
end
subroutine test02()
integer(kind=1) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
u=ubound((a))
l=lbound((a))
if (l(1).ne.1) print *,'test02 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test02 ubound err : u -> ',u(1)
end

subroutine test03()
integer(kind=2) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test03 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test03 ubound err : u -> ',u(1)
end
subroutine test04()
integer(kind=2) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test04 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test04 ubound err : u -> ',u(1)
end

subroutine test05()
integer(kind=4) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test05 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test05 ubound err : u -> ',u(1)
end
subroutine test06()
integer(kind=4) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test06 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test06 ubound err : u -> ',u(1)
end

subroutine test07()
integer(kind=8) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test07 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test07 ubound err : u -> ',u(1)
end
subroutine test08()
integer(kind=8) :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test08 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test08 ubound err : u -> ',u(1)
end

subroutine test09()
real(kind=4 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test09 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test09 ubound err : u -> ',u(1)
end
subroutine test10()
real(kind=4 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test10 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test10 ubound err : u -> ',u(1)
end

subroutine test11()
real(kind=8 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test11 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test11 ubound err : u -> ',u(1)
end
subroutine test12()
real(kind=8 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test12 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test12 ubound err : u -> ',u(1)
end

subroutine test13()
real(kind=16)   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test13 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test13 ubound err : u -> ',u(1)
end
subroutine test14a()
real(kind=16)   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test14a lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test14a ubound err : u -> ',u(1)
end

subroutine test14()
complex(kind=4 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test14 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test14 ubound err : u -> ',u(1)
end
subroutine test15()
complex(kind=4 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test15 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test15 ubound err : u -> ',u(1)
end

subroutine test16()
complex(kind=8 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test16 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test16 ubound err : u -> ',u(1)
end
subroutine test17()
complex(kind=8 )   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test17 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test17 ubound err : u -> ',u(1)
end

subroutine test18()
complex(kind=16)   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test18 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test18 ubound err : u -> ',u(1)
end
subroutine test19()
complex(kind=16)   :: a(2:3)
parameter (a=1)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test19 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test19 ubound err : u -> ',u(1)
end

subroutine test20()
logical(kind=1) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test20 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test20 ubound err : u -> ',u(1)
end
subroutine test21()
logical(kind=1) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test21 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test21 ubound err : u -> ',u(1)
end

subroutine test22()
logical(kind=2) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test22 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test22 ubound err : u -> ',u(1)
end
subroutine test23()
logical(kind=2) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test23 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test23 ubound err : u -> ',u(1)
end

subroutine test24()
logical(kind=4) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test24 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test24 ubound err : u -> ',u(1)
end
subroutine test25()
logical(kind=4) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test25 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test25 ubound err : u -> ',u(1)
end

subroutine test26()
logical(kind=8) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound(a)
u=ubound(a)
if (l(1).ne.2) print *,'test26 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test26 ubound err : u -> ',u(1)
end
subroutine test27()
logical(kind=8) :: a(2:3)
parameter (a=.true.)
integer,dimension(1) :: l
integer,dimension(1) :: u
l=lbound((a))
u=ubound((a))
if (l(1).ne.1) print *,'test27 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test27 ubound err : u -> ',u(1)
end
