program main
type base
 integer::i
end type
 
type ,extends(base)::derived
 real::l
end type

type str
 class(base), pointer::j
end type
 
type(str)::obj
obj=str(j=NULL())
print*,sizeof(obj),'pass'
end
