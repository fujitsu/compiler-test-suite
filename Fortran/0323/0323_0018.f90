call test01()
call test02()
call test03()
call test04()
call test05()
print *,'snfmm522 pass'
end
subroutine test01()
integer :: a(1:3,1:4,1:5,1:6,1:7)
parameter (a=1)
integer,parameter,dimension(5) :: l=lbound(a)
integer,parameter,dimension(5) :: u=ubound(a)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.4) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.5) print *,'fail'
if (l(4).ne.1) print *,'fail'
if (u(4).ne.6) print *,'fail'
if (l(5).ne.1) print *,'fail'
if (u(5).ne.7) print *,'fail'
end

subroutine test02()
integer :: a(1:3,1:4,1:5,1:6,1:7)
parameter (a=1)
integer,parameter,dimension(5) :: l=lbound(+a)
integer,parameter,dimension(5) :: u=ubound(+a)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.4) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.5) print *,'fail'
if (l(4).ne.1) print *,'fail'
if (u(4).ne.6) print *,'fail'
if (l(5).ne.1) print *,'fail'
if (u(5).ne.7) print *,'fail'
end

subroutine test03()
integer :: a(1:3,1:4,1:5,1:6,1:7)
parameter (a=1)
integer,parameter,dimension(5) :: l=lbound(a+0)
integer,parameter,dimension(5) :: u=ubound(a+0)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.4) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.5) print *,'fail'
if (l(4).ne.1) print *,'fail'
if (u(4).ne.6) print *,'fail'
if (l(5).ne.1) print *,'fail'
if (u(5).ne.7) print *,'fail'
end

subroutine test04()
integer :: a(1:3,1:4,1:5,1:6,1:7)
parameter (a=1)
integer,parameter,dimension(5) :: l=lbound((a))
integer,parameter,dimension(5) :: u=ubound((a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.4) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.5) print *,'fail'
if (l(4).ne.1) print *,'fail'
if (u(4).ne.6) print *,'fail'
if (l(5).ne.1) print *,'fail'
if (u(5).ne.7) print *,'fail'
end

subroutine test05()
integer :: a(1:3,1:4,1:5,1:6,1:7)
parameter (a=1)
integer,parameter,dimension(5) :: l=lbound((a+0))
integer,parameter,dimension(5) :: u=ubound((a+0))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.4) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.5) print *,'fail'
if (l(4).ne.1) print *,'fail'
if (u(4).ne.6) print *,'fail'
if (l(5).ne.1) print *,'fail'
if (u(5).ne.7) print *,'fail'
end
