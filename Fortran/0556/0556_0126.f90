program main

type ro
 integer::k
end type

type,extends(ro) :: rai
 integer::l
end type
 
type jj
 integer::i
 class(ro),allocatable::dh
end type
 
type(jj)::obj
obj=jj(2,NULL())
if(allocated(obj%dh)) then
 print*,'Allocated'
else
 print*,'Not allocated','pass'
endif
end
