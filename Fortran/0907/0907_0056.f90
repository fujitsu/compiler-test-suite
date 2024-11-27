type ty
 integer :: a
end type

type ty1
 type(ty) :: cmp
end type

integer ,pointer,volatile :: ii
type(ty1),save,target :: obj[1,*]
obj%cmp%a=4
ii=>obj%cmp%a

end 
