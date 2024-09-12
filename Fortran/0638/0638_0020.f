          INTEGER*4A1(100),A2(100),A3(100)
          INTEGER*4 B1(10,10),B2(10,10),B3(10,10)
          DO 10 I =1,100
            A1(I) = MIN0(I,10)
            A2(I) = MIN0(I,10)+2
            A3(I) = MIN0(I,20)
   10     CONTINUE
          CALL SUB1(100,A1,A2,A3)
          DO 100 J=1,10
          DO 100 I=1,10
            B1(I,J)=I
            B2(I,J)=J
            B3(I,J)=I
  100     CONTINUE
          CALL SUB2(10,10,B1,B2,B3)
          WRITE(6,*) A1,A2,A3,B1,B2,B3
          STOP
          END

          SUBROUTINE SUB1(N,A1,A2,A3)
          INTEGER*4 N,A1(N),A2(100),A3(N)
          INTEGER*4 C(100)
          DO 10 I=1,N
            C(I) = A1(I)
            IF(N.LE.100) THEN
              C(I) = A1(I)+I
              IF (A2(I).LE.I) THEN
                A3(I) = A2(I)
              ENDIF
            ENDIF
   10     CONTINUE
          RETURN
          END

          SUBROUTINE SUB2(N,M,B1,B2,B3)
          INTEGER*4 N,M
          INTEGER *4 B1(N,M),B2(N,10),B3(10,M)
          INTEGER*4 C(100)/100*2/
          DO 10 J=1,M
          DO 10 I=1,N
            B1(I,J) = C(I)+C(J)+B3(I,J)
            B2(I,J) = C(J)+C(100)
            IF(N.GT.2.AND.M.GT.2) THEN
              B1(I,J) = C(J)+C(I)+2+B3(I,J)
            ENDIF
   10     CONTINUE
          CALL SUB3(10,B1,B2,B3,C)
          DO 100 I=1,10
            B2(I,I) =C(I*I)
  100     CONTINUE
          RETURN
          END
          SUBROUTINE SUB3(N,B1,B2,B3,C)
          INTEGER*4 N,B1(N,N),B2(N,N),B3(N,N),C(100),D(100)/100*1/
          DO 20 J = 1,10
            DO 10 I = 1,N
              B1(I,J) = I*J +B3(I,J)+B2(I,J)+D(I)
              IF(N.GT.5) THEN
                B2(I,J) = I*J+B1(I,J)+D(I)
              ENDIF
   10       CONTINUE
            DO 20 I = 1,N
              C(I) = I*J
              B3(I,J) = I*J
   20     CONTINUE
          RETURN
          END
