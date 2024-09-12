PROGRAM MAIN
IMPLICIT NONE
CLASS(*),POINTER::ptr
CHARACTER ,POINTER::arrtar    
allocate(arrtar)
ptr=> arrtar
if (associated(ptr)) then
     print*, "associated"
else
   print*, "error case"
end if
END PROGRAM
