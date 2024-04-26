      REAL X(400)
      CALL INSET(X,10)
      PRINT*, 'OK'
      END

      SUBROUTINE INSET(X,N)
      DIMENSION X(400)
      CALL FCC(X,N)
      RETURN
      END

      SUBROUTINE FCC(X,N)
      DIMENSION X(400)
      I=1
      DO 10 K=1,N
      DO 10 L=1,N
      X(I)=1
      I=I+4
   10 CONTINUE
      RETURN
      END
