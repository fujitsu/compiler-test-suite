type ty
integer,allocatable ::ii[:]
integer :: jj
end type
type(ty) ::obj 
obj = ty(NULL(),2)
end
