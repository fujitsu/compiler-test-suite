        REAL*4 A(10),B(10)/10*2.0/,C(10)/10*0.3/
        DO 10 I=1,10
          A(I)=SIN(B(I))
10      CONTINUE

        DO 20 I=1,10
          A(I)=B(I)
          A(I)=SIN(B(I))
          C(I)=B(I)*0.5
20      CONTINUE

        DO 30 I=1,10
          IF(A(I).GT.6) THEN
            A(I)=SIN(B(I))
          ELSE
            A(I)=0.5
          ENDIF
30      CONTINUE

        DO 40 I=1,10
          A(I)=SIN(B(I))
          C(I)=SIN(C(I))
40      CONTINUE

        DO 50 I=1,10
          A(I)=B(I)
          IF(A(I).GT.0.5) THEN
          A(I)=SIN(B(I))
          C(I)=SIN(B(I))
          ELSE
          C(I)=B(I)*0.5+C(I)
          ENDIF
50      CONTINUE
          WRITE(6,*) A,B,C
          STOP
          END
