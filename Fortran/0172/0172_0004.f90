call ss(   )
print *,'pass'
contains
subroutine ss(c1)
class(*),optional,allocatable::c1
if (present(c1)) then
write(1,*)loc(c1)
end if
end subroutine
end

