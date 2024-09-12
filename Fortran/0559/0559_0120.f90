type ty(jj,ii, kk)     
integer,kind :: kk 
integer,kind :: ii 
integer,kind :: jj 
integer :: arr1(ii-3 : jj-ii)   
end type

type(ty(jj=8+kind(1)-kind(1),kk=2, ii=2+2)) :: obj
obj%arr1=10

if(size(obj%arr1) .EQ. 4 ) then 
print*, 'PASS'
else
print*, 'ERROR'
endif
end
