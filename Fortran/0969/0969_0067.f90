type ty01
 integer :: ii01
end type
type (ty01) :: t01a, t01b
print *,same_type_as(t01a, t01b)
end
