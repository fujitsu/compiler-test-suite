type ty
 integer(kind=4) :: num
end type
 
type(ty):: res(3)
res = pls()
write(1,*)res
print *,'pass'
contains
function pls()
 type(ty) :: pls(3)
 pls%num=4
END function
END
