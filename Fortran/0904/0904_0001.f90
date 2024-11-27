type ty
integer,pointer :: a(:)
end type

type(ty) :: obj1

type ty1
 integer,allocatable :: b(:)[:]
end type

type(ty1),volatile,target :: obj2
obj1%a=>obj2%b

end 
