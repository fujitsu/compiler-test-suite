type ty1(i,j)
integer ,kind :: i=1
integer ,kind :: j=1
integer(1) :: a=10_4
end type
type ty
 type(ty1(1,2)) :: str =ty1(1,2)(10_4)
end type
type(ty) ::sss
print *,sss%str%a
end
