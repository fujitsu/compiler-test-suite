PROGRAM p
   IMPLICIT NONE
   INTEGER, ALLOCATABLE :: a(:,:)
   INTEGER :: Istat
   ALLOCATE(a(5,5), STAT=Istat)
   IF (Istat /= 0) THEN
      STOP
   END IF
   a = 0
   CALL AssumedShape(a(3,:))
   print*,"pass"
   STOP
CONTAINS
   SUBROUTINE AssumedShape(arg)
      INTEGER, CONTIGUOUS, INTENT(IN) :: arg(:)
      if(IS_CONTIGUOUS(arg).neqv..true.)print*,"101"
      RETURN
   END SUBROUTINE AssumedShape
END PROGRAM p

