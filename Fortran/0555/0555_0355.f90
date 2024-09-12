PROGRAM MAIN
IMPLICIT NONE
CLASS(*),POINTER::ptr(:)     
integer ,TARGET::arrtar(5)   
ptr=> arrtar
if (associated(ptr)) then
     print*, "associated"
else
   print*, "error case"
end if
END PROGRAM
