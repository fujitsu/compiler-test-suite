      PROGRAM MAIN
      REAL RESULT,X1/1.0/,Y2
      NAMELIST /NML/RESULT
      EXTERNAL FUNC
      REAL*4 FUNC
      INTRINSIC SIN
      PARAMETER(XXXX=1.0)
      REAL*4    ::X4=1.0
      COMMON /XXXX/A,B,C
      X3=XXXX
      Y1=FUNC(X1)
      DATA X2/1.0/
      X2=X1
      CALL SUB(FUNC,X2,Y2)
      CALL SUB(SIN ,X3,Y3)
      RESULT=SIN(X4)
      OPEN (10)
      WRITE (10,NML=NML)
      REWIND10
      RESULT=0.
      READ (10,NML=NML)
      CLOSE(10,STATUS='DELETE')

      IF(ABS(Y1-Y2).LT.1.0e-4 .AND.
     +   ABS(Y2-Y3).LT.1.0e-4 .AND.
     +   ABS(Y3-Y1).LT.1.0e-4 .AND.
     +   ABS(RESULT-SIN(X4)).LT.1.0e-4) THEN
        WRITE(6,*) ' *** TEST ITEM 1 : OK *** '
       ELSE
        WRITE(6,*) ' +++ TEST ITEM 1 : NG +++ '
        print *,y1,y2,y3,result,sin(x4)
      ENDIF
      PRINT *,' *** PASS *** '
      STOP
      END

      FUNCTION FUNC(X) RESULT(IIIIII)
      REAL X,IIIIII
      COMMON /XXXX/A,B,C
      IIIIII=SIN(X)
      END

      SUBROUTINE SUB(FUNC,X,Y)
      REAL X,FUNC,Y
      COMMON /XXXX/A,B,C
      Y=FUNC(X)
      END
