   MODULE M
     REAL, ALLOCATABLE :: A(:)
   END MODULE M
   SUBROUTINE S
     USE M
     IF (.NOT.ALLOCATED(A)) ALLOCATE (A(-2:2))
   END SUBROUTINE S
   PROGRAM MAIN
     USE M
     if(ALLOCATED(A))print *,'error-1'
     CALL S
     if(.not.ALLOCATED(A))print *,'error-1-2'
     IF (ALLOCATED(A)) THEN
        if (SIZE(A)/=5)print *,'error-2'
        if (LBOUND(A,1)/=-2)print *,'error-3'
        if (UBOUND(A,1)/=+2)print *,'error-4'
        DEALLOCATE (A)
     END IF
   1 FORMAT(' ALLOCATED(A)=',L1)
   2 FORMAT(' SIZE(A)=',I2,' (',I2,':',I2,')')
   print *,'pass'
   END PROGRAM MAIN
