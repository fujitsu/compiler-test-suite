integer,target::a
call sub(a)
print*,"PASS"
contains
 subroutine sub(aa)
use, intrinsic :: iso_c_binding 
       type(*),target::aa
        if(c_associated(c_loc(aa),c_loc(a)) .neqv. .true. )print*,101
        if(loc(aa) .ne. loc(a))print*,102
  end subroutine 
end  
