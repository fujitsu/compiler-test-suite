implicit none
Type ty
        integer :: ii
end type ty
class(ty),pointer :: cptr
allocate(cptr)
select type (cptr)
type is(ty)
cptr%ii = 10
end select
print *,'pass'
end
