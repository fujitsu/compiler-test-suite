class(*),pointer::a1,a2
allocate(a2,source=1)
allocate(a1,source=1)
a2=>a1
if(.not.associated(a1,a2)) then
print *,'err'
endif
call s1
call s2
print *,'pass'
contains
subroutine s1
class(*),pointer::a1,a2
allocate(a2,source=1)
allocate(a1,source=1)
a2=>a1
if(.not.associated(a1,a2))print *,'err1'
end subroutine s1
subroutine s2
type t
integer::ii
end type
class(t),pointer::a1,a2
allocate(a2)
allocate(a1)
a2=>a1
if(.not.associated(a1,a2)) print *,'err2'
end subroutine s2

end
