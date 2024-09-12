type ty(ii,jj, kk )     
integer,kind :: jj = 2    
integer,kind :: kk = 2   
integer,kind :: ii   
integer :: arr1(ii)   
end type

real     :: jj

type(ty(4+kind(jj))) :: obj
obj%arr1=10

if(size(obj%arr1) .eq. 8) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end


