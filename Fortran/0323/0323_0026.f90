call test01()
call test02()
call test03()
call test04()
call test05()
print *,'snfmm530 pass'
end
subroutine test01()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((int((-a)+(+a))+1)+a+(a))
integer,parameter,dimension(3) :: u=ubound((int((-a)+(+a))+1)+a+(a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test02()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((int((-a)+(+a))+1)+(-a)+1)
integer,parameter,dimension(3) :: u=ubound((int((-a)+(+a))+1)+(-a)+1)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test03()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((int((-a)+(+a))+1)+(+a))
integer,parameter,dimension(3) :: u=ubound((int((-a)+(+a))+1)+(+a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test04()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((int((-a)+(+a))+1)+0+(+a))
integer,parameter,dimension(3) :: u=ubound((int((-a)+(+a))+1)+0+(+a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test05()
integer :: a(1:3,2:3,3:3)
parameter (a=1)
integer,parameter,dimension(3) :: l=lbound((int((-a)+(+a))+1)+0+(a+0))
integer,parameter,dimension(3) :: u=ubound((int((-a)+(+a))+1)+0+(a+0))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end
