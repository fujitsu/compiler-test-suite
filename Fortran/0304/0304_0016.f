      IMPLICIT  REAL*8 (A-H,O-Z)
      DIMENSION A(1000,7)
      DIMENSION iCOL(1000,7)
      write(*,*) 'ELLPACK FORMAT INIT'
!$OMP PARALLEL DEFAULT(PRIVATE)
      CALL INIT_MAT_ELL(A,iCOL,7,1000)
!$OMP END PARALLEL
      write(*,*) '*** end of test ***'
      STOP
      END

      SUBROUTINE INIT_MAT_ELL(A,iCOL,IWIDTH,LEN)
      IMPLICIT  REAL*8(A-H,O-Z)
      DIMENSION A(LEN,IWIDTH)
      DIMENSION iCOL(LEN,IWIDTH)
      DO 110 J = 1,IWIDTH
        DO 100 I = 1,LEN
          A(I,J) = 0.0
          iCOL(I,J) = I
 100       CONTINUE
 110      CONTINUE
      RETURN
      END
