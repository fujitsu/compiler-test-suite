call test01()
print *,'pass'
end


subroutine test01()
type ty1
end type
type(ty1) :: ta=ty1()
type ty2
 type(ty1) ,pointer :: pp => null()
 type(ty1)  :: ii = ty1()
 type(ty1)  :: bb(10) = [(ty1(),i=1,10)]
end type
type(ty2) ,allocatable :: aa(:)
allocate(aa(10))
end subroutine
