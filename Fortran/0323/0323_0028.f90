call test01()
call test02()
call test03()
call test04()
call test05()
print *,'snfmm532 pass'
end
subroutine test01()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(a+(a))
integer,parameter,dimension(3) :: u=ubound(a+(a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.0) print *,'fail'
end

subroutine test02()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((-a)+1)
integer,parameter,dimension(3) :: u=ubound((-a)+1)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.0) print *,'fail'
end

subroutine test03()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((+a))
integer,parameter,dimension(3) :: u=ubound((+a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.0) print *,'fail'
end

subroutine test04()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(0+(+a))
integer,parameter,dimension(3) :: u=ubound(0+(+a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.0) print *,'fail'
end

subroutine test05()
integer :: a(1:3,2:3,3:1)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound(0+(a+0))
integer,parameter,dimension(3) :: u=ubound(0+(a+0))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.0) print *,'fail'
end
