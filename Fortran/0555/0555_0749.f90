PROGRAM main
IMPLICIT NONE

CLASS(*),pointer :: ptr(:,:)
call sub(ptr)
contains

  SUBROUTINE sub(dmy1)
  CLASS(*),POINTER :: dmy1(:,:)
  INTEGER(kind=8),TARGET :: tar_int(2,3)
  INTEGER::i,arr(6)

  tar_int=5
  dmy1=> tar_int
  SELECT TYPE(dmy1)
    TYPE IS(INTEGER(8))
      if(dmy1(2,3) .EQ. 5) then 
        do i=1,dmy1(2,3),2
          arr(i)=i
        enddo       
        if(arr(5) /=5) then
          print*,212
        else 
          print*,'pass'
        endif
      else
        print*,213
      endif
  END SELECT
  END SUBROUTINE 

END PROGRAM
