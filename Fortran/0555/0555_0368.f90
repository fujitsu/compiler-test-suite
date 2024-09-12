PROGRAM MAIN
CHARACTER (LEN = 10), TARGET::ptr_ty1    
call sub(ptr_ty1)
contains
 
    SUBROUTINE sub(dmy_ty1)
      CLASS(*),POINTER::ptr
      CHARACTER (LEN = *), TARGET::dmy_ty1    
      ptr => dmy_ty1
      if (associated(ptr)) then
          print*, "associated"
      else
          print*, "error case"
     end if
    END SUBROUTINE
 
END PROGRAM
