type ty 
integer::xx
integer,allocatable :: yy
end type

integer::ii
type(ty)::obj
obj=ty(1)
print *,'pass'
end
