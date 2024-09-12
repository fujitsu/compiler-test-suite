PROGRAM MAIN
CHARACTER (LEN = :), POINTER::ptr_ty1    
call sub(ptr_ty1)
contains
 
    SUBROUTINE sub(dmy_ty1)
      CLASS(*),POINTER::ptr
      CHARACTER (LEN = :), POINTER::dmy_ty1   
      CHARACTER (LEN = 10), target::dmy_ty2   
      dmy_ty2 = "abc"
      allocate(dmy_ty1,SOURCE = dmy_ty2) 
      ptr => dmy_ty1
      if (associated(ptr)) then
          print*, "associated"
      else
          print*, "error case"
     end if
    END SUBROUTINE
 
END PROGRAM
