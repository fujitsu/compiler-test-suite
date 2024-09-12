call sub()
print *,'pass'
end
subroutine sub()
type ty1
 integer ,allocatable :: a
 integer :: arr(100) =1
end type
type(ty1) ::str(1000)
end
