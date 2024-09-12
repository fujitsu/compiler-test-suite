program main

type roop
 integer::k
end type

type,extends(roop) :: rai
 integer::l
end type
 
type jj
 integer::i
 class(roop),pointer::dhoop
end type
 
type(jj)::obj
obj=jj(2,NULL())
print*,sizeof(obj),'pass'
end
