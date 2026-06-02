subroutine test01()
type ty1
 integer :: ii = 1
end type
type(ty1) :: sss(1)
type ty2
 integer :: ii /1/
end type
type(ty2) :: aaa(1)
sss(1:1) = (/ty1 :: sss(aaa(1)%ii) /)
end
call test01()
print *,'pass'
end
