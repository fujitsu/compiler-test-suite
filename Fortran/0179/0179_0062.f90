type ty1
integer,pointer:: a(:)
end type
type(ty1) ::s
integer,pointer:: a(:)
allocate(a(10))
a=1
allocate(s%a(10))
s%a=1
i=1
call sub1_1(a)
call sub1_1(s%a)
print *,'pass'
contains
subroutine sub1_1(a)
integer a(*)
end subroutine
end
