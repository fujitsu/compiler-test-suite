      REAL A1(5,2,1000)/10000*1.0/
      REAL A2(5,2,1000)/10000*1.0/
      REAL A3(5,2,1000)/10000*1.0/
      REAL B1(5,1000,2)/10000*1.0/
      REAL B2(5,1000,2)/10000*1.0/
      REAL B3(5,1000,2)/10000*1.0/
      REAL C1(1000,5,2)/10000*1.0/
      REAL C2(1000,5,2)/10000*1.0/
      REAL C3(1000,5,2)/10000*1.0/
      CALL SUB1(A1,A2,A3)
      CALL SUB2(B1,B2,B3)
      CALL SUB3(C1,C2,C3)
      WRITE(6,*) (((A1(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((A2(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((A3(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((B1(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((B2(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((B3(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((C1(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((C2(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((C3(K,J,I),K=1,1),J=1,1),I=1,1)
      END
      SUBROUTINE SUB1(A1,A2,A3)
      REAL A1(5,2,1000)
      REAL A2(5,2,1000)
      REAL A3(5,2,1000)
      DO 10 I=1,999
        DO 10 J=1,1
          DO 10 K=1,1
            A1(K,J,I)=A2(K,J,I)+A3(K,J,I)
            A2(K,J,I)=A1(K,J,I)+A3(K,J,I)
            A3(K,J,I)=A1(K,J,I)+A2(K,J,I)
   10 CONTINUE
      END
      SUBROUTINE SUB2(B1,B2,B3)
      REAL B1(5,1000,2)
      REAL B2(5,1000,2)
      REAL B3(5,1000,2)
      DO 10 I=1,1
        DO 10 J=1,999
          DO 10 K=1,1
            B1(K,J,I)=B2(K,J,I)+B3(K,J,I)
            B2(K,J,I)=B1(K,J,I)+B3(K,J,I)
            B3(K,J,I)=B1(K,J,I)+B2(K,J,I)
   10 CONTINUE
      END
      SUBROUTINE SUB3(C1,C2,C3)
      REAL C1(1000,5,2)
      REAL C2(1000,5,2)
      REAL C3(1000,5,2)
      DO 10 I=1,1
        DO 10 J=1,1
          DO 10 K=1,999
            C1(K,J,I)=C2(K,J,I)+C3(K,J,I)
            C2(K,J,I)=C1(K,J,I)+C3(K,J,I)
            C3(K,J,I)=C1(K,J,I)+C2(K,J,I)
   10 CONTINUE
      END
