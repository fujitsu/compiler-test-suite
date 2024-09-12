PROGRAM MAIN
CHARACTER (LEN = 10), TARGET::ptr_ty1 
integer :: N = 5   
call sub(ptr_ty1,N)
contains
 
    SUBROUTINE sub(dmy_ty1,N)
      CLASS(*),POINTER::ptr
      integer :: N    
      CHARACTER (LEN = N),TARGET::dmy_ty1    
      ptr => dmy_ty1
      if (associated(ptr)) then
          print*, "associated"
      else
          print*, "error case"
     end if
    END SUBROUTINE
 
END PROGRAM
