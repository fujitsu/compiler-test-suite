PROGRAM MAIN
IMPLICIT NONE
CLASS(*),POINTER::arrptr_base(:,:,:,:)
ALLOCATE(integer :: arrptr_base(4,4,6,7))

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

arrptr_base=>NULL()

      if(ASSOCIATED(arrptr_base)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END 

