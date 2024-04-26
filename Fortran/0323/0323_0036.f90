call test01()
call test02()
call test03()
call test04()
call test05()
print *,'snfmm541 pass'
end
subroutine test01()
type ty1
 integer aaa
end type 
type (ty1) ,parameter,dimension(2:3) :: a=ty1(1)
integer,parameter,dimension(1) :: l=lbound(a)
integer,parameter,dimension(1) :: u=ubound(a)
if (l(1).ne.2) print *,'test01 lbound err : l -> ',l(1)
if (u(1).ne.3) print *,'test01 ubound err : u -> ',u(1)
end

subroutine test02()
type ty1
 integer aaa
end type 
type (ty1) ,parameter,dimension(2:3) :: a=ty1(1)
integer,parameter,dimension(1) :: l=lbound((a))
integer,parameter,dimension(1) :: u=ubound((a))
if (l(1).ne.1) print *,'test02 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test02 ubound err : u -> ',u(1)
end

subroutine test03()
type ty1
 integer aaa
end type
type (ty1) ,parameter,dimension(4:3) :: a=ty1(1)
integer,parameter,dimension(1) :: l=lbound(a)
integer,parameter,dimension(1) :: u=ubound(a)
if (l(1).ne.1) print *,'test03 lbound err : l -> ',l(1)
if (u(1).ne.0) print *,'test03 ubound err : u -> ',u(1)
end

subroutine test04()
type ty1
 integer aaa
end type 
type (ty1) ,parameter,dimension(2:3) :: a=ty1(1)
integer,parameter,dimension(1) :: l=lbound((a))
integer,parameter,dimension(1) :: u=ubound((a))
if (l(1).ne.1) print *,'test04 lbound err : l -> ',l(1)
if (u(1).ne.2) print *,'test04 ubound err : u -> ',u(1)
end

subroutine test05()
type ty1
 integer aaa
end type
type (ty1) ,parameter,dimension(4:3) :: a=ty1(1)
integer,parameter,dimension(1) :: l=lbound((a))
integer,parameter,dimension(1) :: u=ubound((a))
if (l(1).ne.1) print *,'test05 lbound err : l -> ',l(1)
if (u(1).ne.0) print *,'test05 ubound err : u -> ',u(1)
end
