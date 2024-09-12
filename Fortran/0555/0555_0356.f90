PROGRAM MAIN
 
IMPLICIT NONE
 
CLASS(*),POINTER::ptr
ptr=>ptr_fun() 
if (associated(ptr)) then
     print*, "associated"
else
   print*, "error case"
end if
 
contains
 
    FUNCTION ptr_Fun()
      integer,POINTER:: tar
      integer,POINTER::ptr_Fun 
      allocate(tar)
      ptr_Fun=>tar
      return
    END FUNCTION
 
END PROGRAM
