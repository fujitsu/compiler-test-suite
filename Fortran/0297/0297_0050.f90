      INTEGER N(2)/1,1/

      CALL SUB1(N(1),N(2))
      END

      SUBROUTINE SUB1(N,M)
      REAL A(20),B(20)
      REAL RES1(20), RES2(20)
      INTEGER FLAG/0/
      DATA A/20*1.0/
      DATA B/20*2.0/
      DATA RES1/1*1.0,9*2.0,10*1.0/
      DATA RES2/1*2.0,9*4.0,10*2.0/

      DO I=2,10
        A(I) = A(I+N) + 1
        B(I) = B(I+M) + 2
      ENDDO

      DO I=1,20
        IF (A(I).NE.RES1(I) .OR. B(I).NE.RES2(I)) THEN
          FLAG = 1
        ENDIF
      ENDDO

      IF (FLAG == 0) THEN
        PRINT*, "OK"
      ELSE
        PRINT*, "NG"
        PRINT*, A,B
      ENDIF
      RETURN
      END
