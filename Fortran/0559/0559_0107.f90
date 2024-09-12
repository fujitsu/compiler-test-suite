type ty(ii,jj, kk )     
integer,kind :: jj = 2 
integer,kind :: kk = 2   
integer,kind :: ii   
integer :: arr1(ii)   
end type

type(ty(selected_real_kind(10)-kind(1)))   :: obj  
obj%arr1=10

if(size(obj%arr1) .eq. 4) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end


