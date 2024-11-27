type ty
integer:: a(1)
end type

type(ty),pointer  :: obj

type ty1
 type(ty) ,allocatable :: b[:]
end type 

type(ty1),target,volatile :: obj2
obj=>obj2%b

end 
