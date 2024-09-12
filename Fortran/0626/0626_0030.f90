subroutine s
type ty
 integer :: ii
end type
class(ty) ,pointer :: i
class(*) ,pointer :: j
integer , target :: s1
type(ty), target :: s2
s2%ii=1
i=>s2
s1=2
j=>s1
select type (i)
class is(ty)
call subb((/i/))
end select
select type (j)
type is(integer)
call suba((/j/))
end select
contains
subroutine suba(b)
integer b(:)
if (size(b)/=1) print *,101
if (any(b/=2))print *,102
end subroutine
subroutine subb(a)
type(ty)::a(:)
if (size(a)/=1) print *,201
if (any(a%ii/=1))print *,202
end subroutine
end
call s
print *,'pass'
end
