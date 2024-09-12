use, intrinsic :: iso_c_binding
implicit none 
integer(kind=1)           :: i_int
integer(c_int)           :: fl 

interface    
   subroutine c_func(a, flag) bind(c)       
   use, intrinsic :: iso_c_binding       
   implicit none       
   type(*) :: a       
   integer(c_int), value :: flag    
   end subroutine c_func 
end interface  



i_int = 2

fl=15       
print *,'pass'
end   

