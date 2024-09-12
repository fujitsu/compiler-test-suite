PROGRAM MAIN

IMPLICIT NONE
CLASS(*),POINTER::ptr_base(:)
CLASS(*),POINTER::ptr_1 => null()

allocate(integer :: ptr_base(10))

      if(ASSOCIATED(ptr_1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

ptr_1=>ptr_base (10)

      if(ASSOCIATED(ptr_1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

END PROGRAM
