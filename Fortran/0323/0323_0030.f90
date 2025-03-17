call test01()
call test02()
call test03()
call test04()
call test05()
print *,'snfmm534 pass'
end
subroutine test01()
type ty1  
integer :: a(1:3,2:3,3:3)
end type
type (ty1) ,parameter :: aaa=ty1(1)
integer,parameter,dimension(3) :: l=lbound(aaa%a)
integer,parameter,dimension(3) :: u=ubound(aaa%a)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.2) print *,'fail'
if (u(2).ne.3) print *,'fail'
if (l(3).ne.3) print *,'fail'
if (u(3).ne.3) print *,'fail'
end

subroutine test02()
type ty1  
integer :: a(1:3,2:3,3:3)
end type
type (ty1) ,parameter :: aaa=ty1(1)
integer,parameter,dimension(3) :: l=lbound(-aaa%a)
integer,parameter,dimension(3) :: u=ubound(-aaa%a)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test03()
type ty1  
integer :: a(1:3,2:3,3:3)
end type
type (ty1) ,parameter :: aaa=ty1(1)
integer,parameter,dimension(3) :: l=lbound((aaa%a))
integer,parameter,dimension(3) :: u=ubound((aaa%a))
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test04()
type ty1  
integer :: a(1:3,2:3,3:3)
end type
type (ty1) ,parameter :: aaa=ty1(1)
integer,parameter,dimension(3) :: l=lbound(0+aaa%a)
integer,parameter,dimension(3) :: u=ubound(0+aaa%a)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end

subroutine test05()
type ty1  
integer :: a(1:3,2:3,3:3)
end type
type (ty1) ,parameter :: aaa=ty1(1)
integer,parameter,dimension(3) :: l=lbound(0+(aaa%a)+0)
integer,parameter,dimension(3) :: u=ubound(0+(aaa%a)+0)
if (l(1).ne.1) print *,'fail'
if (u(1).ne.3) print *,'fail'
if (l(2).ne.1) print *,'fail'
if (u(2).ne.2) print *,'fail'
if (l(3).ne.1) print *,'fail'
if (u(3).ne.1) print *,'fail'
end
