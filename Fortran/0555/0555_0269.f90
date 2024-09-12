PROGRAM MAIN
IMPLICIT NONE
CLASS(*),POINTER::ptr_base

ALLOCATE(integer::ptr_base)
      if(ASSOCIATED(ptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

ptr_base=>NULL()

      if(ASSOCIATED(ptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 
END 

