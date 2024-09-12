
integer,target::a
call sub(a)
print*,"PASS"
contains
 subroutine sub(aa)
use, intrinsic :: iso_c_binding 
       type(*),target::aa
  
     if(c_associated(c_loc(aa),c_loc(a)) .neqv. .true.)print*,"101" 
end subroutine 

end        
 
