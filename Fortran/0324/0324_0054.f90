call test01()
print *,'pass'
end

subroutine test01()
save
type ty1
 integer :: a(10)=1
end type
type(ty1)  ,allocatable :: a(:)
if (1.eq.2) print *,allocated(a)
end
