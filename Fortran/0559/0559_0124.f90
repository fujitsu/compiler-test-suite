type ty(ii)     
integer,kind :: ii   
integer :: arr1(ii)   
end type

type(ty(ii=2+2)) :: obj
obj%arr1=10


if(size(obj%arr1) .EQ. 4 ) then 
print*,'PASS'
else
print*,'ERROR'
endif
end