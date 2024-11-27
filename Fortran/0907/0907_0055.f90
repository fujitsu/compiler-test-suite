type ty
integer,pointer :: a(:)
end type

type(ty),volatile :: obj

integer,save,target :: b(2)[*]
b=2
obj%a=>b

print*,b(:),obj%a
end 
