call sub01()
print *,'pass'
end

subroutine sub01()
type ty1
 integer a(2,2)
 integer b
end type
type(ty1) :: str
str%a = 1
str%b = 2
call isub(str%a,str%b)
if (any(str%a(:,1).ne.10)) print *,'ng - 1'
if (any(str%a(:,2).ne.12)) print *,'ng - 2'
contains
subroutine isub(a,b)
integer a(2,2)
integer b
a(:,1)=10
a(:,2)=12
b=20
end subroutine
end subroutine
