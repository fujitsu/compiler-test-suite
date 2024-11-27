type x
  integer::x1
end type
class(*),allocatable::c1
call ss(   )
allocate(x:: c1)
call ss(c1)
print *,'pass'
contains
subroutine ss(c1)
class(*),optional,allocatable::c1
if (present(c1)) then
if (loc(c1)==0) print *,301
end if
end subroutine
end

