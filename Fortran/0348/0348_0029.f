      CHARACTER*(10) C2
      PARAMETER (C2='123456789')
      CALL CHK(C2)
      END

      SUBROUTINE CHK(C2)
      CHARACTER*(*) C2
      DO 2 I=1,5
         CALL READX('1',K)
         write(6,*) K
 2    CONTINUE
*
*
      END
      SUBROUTINE READX(C,I)
      CHARACTER*1 C
      READ (C      ,'(I1)') I
      END
