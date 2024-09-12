          REAL*4 A1(100),A2(100),A3(100),A4(100)
          REAL*4 B1(10,10),B2(10,10),B3(10,10),B4(10,10)
          INTEGER*4 A,B
          CALL SUB1(A1,A2,B1,B2)
          CALL SUB2(A3,A4,B3,B4)
          A=0
          B=0
          DO 10 I = 1,100
            IF(ABS(A1(I)-A3(I)).GT.0.001) THEN
              A =1
              B =I
              GOTO 99
            ENDIF
            IF(ABS(A2(I)-A4(I)).GT.0.001) THEN
              A = 2
              B = I
              GOTO 99
            ENDIF
   10     CONTINUE
          DO 20 J=1,10
          DO 20 I=1,10
            IF(ABS(B1(I,J)-B3(I,J)).GT.0.001) THEN
              A = 3
              B = I+10*J
              GOTO 99
            ENDIF
            IF(ABS(B2(I,10)-B4(I,10)).GT.0.001) THEN
              A=4
              B=I+10*J
              GOTO 99
            ENDIF
   20     CONTINUE
   99     CONTINUE
          WRITE(6,*) A,B
          STOP
          END

          SUBROUTINE SUB1(A,B,C,D)
          REAL*4 A(100),B(100),C(10,10),D(10,10),E(10)/10*1.0/,F(10)
          REAL*4 X/2.0/
          DO 30 J=1,10
          DO 10 I=1,100
            A(I) = I+1.0
            B(I) = A(I)+J+2.0
   10     CONTINUE
          DO 20 I=1,10
            C(I,J)=E(10)
            D(I,J)=E(I)
            C(I,J)=D(I,J)+C(I,J)+2.0
   20     CONTINUE
          DO 30 I=1,10
            F(I)=D(I,J)+C(I,J)
            IF(X.EQ.2) THEN
              IF(F(I).GT.10.0) THEN
                F(I) = D(I,J)
              ELSE
                F(I) = C(I,J)
              ENDIF
            ENDIF
   30     CONTINUE
          DO 40 J=1,10
          DO 40 I=1,10
            D(I,J) = F(I) + C(I,10)
            IF(X.EQ.2.0) THEN
              D(I,J) = F(I)+C(I,10)+2.0
            ENDIF
   40     CONTINUE
          RETURN
          END

          SUBROUTINE SUB2(A,B,C,D)
          REAL*4 A(100),B(100),C(10,10),D(10,10),E(10)/10*1.0/,F(10)
          REAL*4 X/2.0/
          DO 30 J=1,10
          DO 10 I=1,100
            A(I)=I+1.0
   10       B(I)=A(I)+J+2.0
          DO 20 I=1,10
            C(I,J)=E(10)
            D(I,J)=E(I)
   20       C(I,J)=D(I,J)+C(I,J)+2.0
          DO 30 I=1,10
            F(I)=D(I,J)+C(I,J)
            IF(X.EQ.2) THEN
              IF(F(I).GT.10.0) THEN
                F(I)= D(I,J)
              ELSE
                F(I)= C(I,J)
              ENDIF
            ENDIF
   30     CONTINUE
          DO 40 J=1,10
          DO 40 I=1,10
            D(I,J) =F(I)+C(I,10)
            IF(X.EQ.2.0) THEN
              D(I,J) = F(I)+C(I,10)+2.0
            ENDIF
   40     CONTINUE
          RETURN
          END
