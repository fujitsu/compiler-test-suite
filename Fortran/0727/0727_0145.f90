
CHARACTER (5)               , DIMENSION(:), POINTER     :: THEARRAY
INTEGER                     :: AMOUNT
      INTEGER               :: ERROR
 allocate (THEARRAY(3:6))
THEARRAY=(/'12345','67890','abcde','fghij'/)
AMOUNT=3
 call EXTEND_CHAR(THEARRAY,AMOUNT, ERROR)
 print *,'pass'
 contains
 SUBROUTINE EXTEND_CHAR(THEARRAY,AMOUNT, ERROR)

      CHARACTER (*)               , DIMENSION(:), POINTER     :: THEARRAY
      INTEGER                     ,               INTENT(IN)  :: AMOUNT
      INTEGER                     ,               INTENT(OUT) :: ERROR

      CHARACTER(LEN=LEN(THEARRAY)), DIMENSION(:), POINTER     :: BACKUP
      INTEGER                                                 :: LOWER, UPPER, NEW_UPPER
      INTEGER                                                 :: IER

      ERROR = 0
 
      LOWER = LBOUND(THEARRAY, DIM=1)
      UPPER = UBOUND(THEARRAY, DIM=1)
    
      NEW_UPPER = UPPER + AMOUNT
    
      ALLOCATE(BACKUP(LOWER:NEW_UPPER),STAT=IER)
      IF (IER.NE.0) THEN
         IER = 1
         RETURN
      END IF
  

      WRITE(1,*)LBOUND(THEARRAY,DIM=1)
      WRITE(1,*)UBOUND(THEARRAY,DIM=1)
      WRITE(1,*)NEW_UPPER
      WRITE(1,*)LBOUND(BACKUP, DIM=1)
      WRITE(1,*)UBOUND(BACKUP, DIM=1)

      BACKUP(LOWER:UPPER) = THEARRAY(LOWER:UPPER)
      DEALLOCATE(THEARRAY)

      THEARRAY => BACKUP

      NULLIFY(BACKUP)
 rewind 1
 read(1,*)i;if (i/=3)write(6,*) "NG"
 read(1,*)i;if (i/=6)write(6,*) "NG"
 read(1,*)i;if (i/=9)write(6,*) "NG"
 read(1,*)i;if (i/=3)write(6,*) "NG"
 read(1,*)i;if (i/=9)write(6,*) "NG"

    END SUBROUTINE EXTEND_CHAR
end

