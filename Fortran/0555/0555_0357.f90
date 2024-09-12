PROGRAM MAIN
IMPLICIT NONE
CLASS(*),POINTER::ptr(:)     
Complex ,TARGET::arrtar(5)    
ptr=> arrtar
if (associated(ptr)) then
     print*, "associated"
else
   print*, "error case"
end if
END PROGRAM
