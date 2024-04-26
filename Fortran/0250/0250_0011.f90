type ty
 integer::arr(4)
end type
type ,extends(ty)::ty1
Integer::arr1(2)
end type

type(ty1),parameter::obj(*) = [ty1([1,2,3,4],[5,6]), ty1([2,3,4,5],[7,8])]

if(size(obj) .Eq. size(obj(1)%arr1))then
print*,'Pass'
else
print*,'Fail'
endif
end
