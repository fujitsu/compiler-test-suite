subroutine s1
type x
 integer::x1
end type
type (x),allocatable::a1,a2
if (same_type_as(a1,a2)) then
else
print *,101
endif
end
call s1
print *,'pass'
end
