type ty(ii,jj, kk )     
integer,kind :: jj    
integer,kind :: kk    
integer,kind :: ii   
integer :: arr1(ii-jj : kk)   
end type

real     :: jj
integer  :: ii =10
integer, parameter      :: pint=10

type(ty(kind(pint),8,8))  :: obj  
obj%arr1=10

if(kind(jj) .eq. kind(ii) .and. size(obj%arr1) .eq. 13) then
  print*,'PASS'
else
  print*,'ERROR'
end if
end


