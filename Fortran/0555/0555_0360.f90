PROGRAM MAIN
IMPLICIT NONE
CLASS(*),POINTER::ptr
REAL ,POINTER::arrtar    
allocate(arrtar)
ptr=> arrtar
if (associated(ptr)) then
     print*, "associated"
else
   print*, "error case"
end if
END PROGRAM
