PROGRAM MAIN
CHARACTER (LEN = :), ALLOCATABLE,TARGET::ptr_ty1    
call sub(ptr_ty1)
contains
 
    SUBROUTINE sub(dmy_ty1)
      CLASS(*),POINTER::ptr
      CHARACTER (LEN = :),ALLOCATABLE ,TARGET::dmy_ty1 
      CHARACTER (LEN = 10),TARGET::dmy_ty2 
      dmy_ty2 = "1234567890"
      allocate(dmy_ty1 ,SOURCE = dmy_ty2) 
      ptr => dmy_ty1
      if (associated(ptr)) then
          print*, "associated"
      else
          print*, "error case"
     end if
    END SUBROUTINE
 
END PROGRAM
