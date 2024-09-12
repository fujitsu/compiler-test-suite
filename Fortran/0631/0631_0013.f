      CALL SUB07
      CALL SUB08
      CALL SUB09
      CALL SUB10
      END
      FUNCTION F(N)
      INTEGER N,F
      F=N
      END
      SUBROUTINE SUB07
      REAL A(1:10,10)/100*1.0/
      REAL B(1:100000,2)/200000*1.0/
      N=10
      DO 10 J=1,10
      DO 10 I=N,1,-1
        A(I,J)=+0.0
   10 CONTINUE
      M=99999
      DO 20 J=1,2
      DO 20 I=M,1,-1
        B(I,J)=B(I,J)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      WRITE(6,*) ((B(L,K),L=1,10),K=1,2)
      END
      SUBROUTINE SUB08
      REAL A(1:10,10)/100*1.0/
      REAL B(1:100000,2)/200000*1.0/
      IF(1.GT.0) THEN
        N=10
      ENDIF
      DO 10 J=1,10
      DO 10 I=N,1
        A(I,J)=+0.0
   10 CONTINUE
      IF(1.GT.0) THEN
        M=99999
      ENDIF
      DO 20 J=1,2
      DO 20 I=M,1
        B(I,J)=B(I,J)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      WRITE(6,*) ((B(L,K),L=1,10),K=1,2)
      END
      SUBROUTINE SUB09
      REAL A(1:10,10)/100*1.0/
      REAL B(1:100000,2)/200000*1.0/
      INTEGER H
      H(N)=N
      DO 10 J=1,10
      DO 10 I=H(10),1,-1
        A(I,J)=+0.0
   10 CONTINUE
      DO 20 J=1,2
      DO 20 I=H(99999),1,-1
        B(I,J)=B(I,J)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      WRITE(6,*) ((B(L,K),L=1,10),K=1,2)
      END
      SUBROUTINE SUB10
      REAL A(1:10,10)/100*1.0/
      REAL B(1:100000,2)/200000*1.0/
      INTEGER F
      DO 10 J=1,10
      DO 10 I=F(10),1,-1
        A(I,J)=+0.0
   10 CONTINUE
      DO 20 J=1,2
      DO 20 I=F(99999),1,-1
        B(I,J)=B(I,J)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      WRITE(6,*) ((B(L,K),L=1,10),K=1,2)
      END
