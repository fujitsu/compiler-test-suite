      N=10
      CALL SUB1(10)
      CALL SUB2(10)
      END
      SUBROUTINE SUB1(N)
      REAL A(20,20,20,20)/160000*1.0/
      REAL B(20,20,20,20)/160000*1.0/
      DO 10 I=1,5
        DO 10 J=1,5
          DO 10 K=1,N
            DO 10 L=1,5
              A(L,K,J,I)=B(L,K,J,I)+1.0
   10 CONTINUE
      WRITE(6,*) ((((A(L,K,J,I),L=1,1),K=1,1),J=1,10),I=1,10)
      WRITE(6,*) ((((B(L,K,J,I),L=1,1),K=1,1),J=1,10),I=1,10)
      END
      SUBROUTINE SUB2(N)
      REAL A(20,20,20,20)/160000*1.0/
      REAL B(20,20,20,20)/160000*1.0/
      DO 10 I=1,5
        DO 10 J=1,N
          DO 10 K=1,5
            DO 10 L=1,5
              A(L,K,J,I)=B(L,K,J,I)+1.0
   10 CONTINUE
      WRITE(6,*) ((((A(L,K,J,I),L=1,1),K=1,1),J=1,10),I=1,10)
      WRITE(6,*) ((((B(L,K,J,I),L=1,1),K=1,1),J=1,10),I=1,10)
      END
