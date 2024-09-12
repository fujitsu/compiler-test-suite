call test01()
print *,'pass'
end

subroutine test01()
type ty1
   integer :: ia(1) = 3
end type

type ty2
 type(ty1) :: ta(10) = (/ ((ty1(4),j=1,2),i=1,5) /)
 type(ty1) :: tb(10) = (/ (ty1(i),i=1,20,2) /)
 type(ty1) :: tc(10)
end type

type(ty2) tt

print *, tt%ta
print *, tt%tb
print *, tt%tc

end subroutine
