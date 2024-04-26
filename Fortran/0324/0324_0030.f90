call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
print *,'pass'
end

subroutine sub01()
type ty1
 integer a(2,2)
 integer b(2,2)
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,str%b)
if (any(str%a(:,1).ne.10)) print *,'ng1 - 1'
if (any(str%a(:,2).ne.12)) print *,'ng1 - 2'
contains
subroutine isub(a,b)
integer a(2,2)
integer b(2,2)
a(:,1)=10
a(:,2)=12
b=20
end subroutine
end subroutine

subroutine sub02()
type ty1
 integer a(2,2)
 integer c
 integer b(2,2)
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,str%b)
if (any(str%a(:,1).ne.10)) print *,'ng2 - 1'
if (any(str%a(:,2).ne.12)) print *,'ng2 - 2'
contains
subroutine isub(a,b)
integer a(2,2)
integer b(2,2)
a(:,1)=10
a(:,2)=12
b=20
end subroutine
end subroutine

subroutine sub03()
type ty1
 integer a(2,2)
 integer b(2,2)
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,ii,str%b)
if (any(str%a(:,1).ne.10)) print *,'ng3 - 1'
if (any(str%a(:,2).ne.12)) print *,'ng3 - 2'
contains
subroutine isub(a,ii,b)
integer a(2,2)
integer b(2,2)
a(:,1)=10
a(:,2)=12
ii=1
b=20
end subroutine
end subroutine

subroutine sub04()
type ty1
 integer a(2)
 integer b
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,str%b)
if (any(str%a(:).ne.10)) print *,'ng4 - 1'
contains
subroutine isub(a,b)
integer a(2)
integer b
a(:)=10
b=20
end subroutine
end subroutine

subroutine sub05()
type ty1
 integer c
 integer a(2,2)
 integer b
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%c,str%a,str%b)
if (any(str%a(:,1).ne.10)) print *,'ng5 - 1'
if (any(str%a(:,2).ne.12)) print *,'ng5 - 2'
contains
subroutine isub(c,a,b)
integer a(2,2),c
integer b
a(:,1)=10
a(:,2)=12
b=20
c=1
end subroutine
end subroutine

subroutine sub06()
type ty1
 integer a(2)
 integer b(2,2)
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,str%b)
if (any(str%a(:).ne.10)) print *,'ng6 - 1'
if (any(str%b(:,1).ne.20)) print *,'ng6 - 1'
contains
subroutine isub(a,b)
integer a(2)
integer b(2,2)
a(:)=10
b=20
end subroutine
end subroutine

subroutine sub07()
type ty1
 integer a(2)
 integer b(2,2)
 integer c
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,str%b,str%c)
if (any(str%a(:).ne.10)) print *,'ng7 - 1'
if (any(str%b(:,1).ne.20)) print *,'ng7 - 1'
contains
subroutine isub(a,b,c)
integer a(2)
integer b(2,2),c
c=100
a(:)=10
b=20
end subroutine
end subroutine

