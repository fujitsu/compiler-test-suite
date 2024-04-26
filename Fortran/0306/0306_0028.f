      REAL*8 C(50)/50*2/
      REAL*8 X/0/
      CALL SUB1(C,50)

      DO I=2,49
        X = C(I+1) - C(I)
        IF (X.NE.5) THEN
          GOTO 10
        ENDIF
      ENDDO
      PRINT*, "OK"
      GOTO 20
 10   PRINT*, "NG"
 20   CONTINUE
      END

      SUBROUTINE SUB1(C,N)
      REAL*8 C(N)
      N1=N/45
      DO K=2,N-1
        C(K+N1)=C(K)+5
      ENDDO
      RETURN
      END
