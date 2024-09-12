      DIMENSION A(401),B(401),C(401)
      DATA A/401*1.0/
      DATA B/401*2.0/
      DO 20 I=1,401
        C(I)=A(I)+B(I)
20    CONTINUE
      K=0
      DO 40 J=1,401
        IF ( A(J)+B(J).NE.C(J)) K=1
40    CONTINUE
      IF ( K.EQ.0 ) THEN
          PRINT *,'OK'
        ELSE
          PRINT *,'NG'
      ENDIF
      STOP
      END
