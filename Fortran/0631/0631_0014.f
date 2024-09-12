      CALL SUB01
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      END
      SUBROUTINE SUB01
      REAL A(10,-20:0)/210*1.0/
      REAL B(10,-20:0)/210*1.0/
      DO 10 I=-19,-1
      DO 10 J=1,10
        A(J,I)=B(J,I)+1.0
   10 CONTINUE
      WRITE(6,*) ((A(K,L),K=1,10),L=-5,0)
      END
      SUBROUTINE SUB03
      REAL A(10,1:10)/100*1.0/
      REAL B(2,1:100000)/200000*1.0/
      N=10
      DO 10 I=1,N
      DO 10 J=1,10
        A(J,I)=+0.0
   10 CONTINUE
      M=99999
      DO 20 I=1,M
      DO 20 J=1,2
        B(J,I)=B(J,I)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(K,L),K=1,10),L=1,10)
      WRITE(6,*) ((B(K,L),K=1,2),L=1,10)
      END
      SUBROUTINE SUB04
      REAL A(10,1:10)/100*1.0/
      REAL B(2,1:100000)/200000*1.0/
      IF(1.GT.0) THEN
        N=10
      ENDIF
      DO 10 I=1,N
      DO 10 J=1,10
        A(J,I)=+0.0
   10 CONTINUE
      IF(1.GT.0) THEN
        M=99999
      ENDIF
      DO 20 I=1,M
      DO 20 J=1,2
        B(J,I)=B(J,I)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(K,L),K=1,10),L=1,10)
      WRITE(6,*) ((B(K,L),K=1,2),L=1,10)
      END
      SUBROUTINE SUB05
      REAL A(10,1:10)/100*1.0/
      REAL B(2,1:100000)/200000*1.0/
      INTEGER G
      G(N)=N
      DO 10 I=1,G(10)
      DO 10 J=1,10
        A(J,I)=+0.0
   10 CONTINUE
      DO 20 I=1,G(99999)
      DO 20 J=1,2
        B(J,I)=B(J,I)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(K,L),K=1,10),L=1,10)
      WRITE(6,*) ((A(K,L),K=1,2),L=1,10)
      END
      SUBROUTINE SUB06
      REAL A(10,1:10)/100*1.0/
      REAL B(2,1:100000)/200000*1.0/
      INTEGER F
      DO 10 I=1,F(10)
      DO 10 J=1,10
        A(J,I)=+0.0
   10 CONTINUE
      DO 20 I=1,F(99999)
      DO 20 J=1,2
        B(J,I)=B(J,I)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(K,L),K=1,10),L=1,10)
      WRITE(6,*) ((A(K,L),K=1,2),L=1,10)
      END
      FUNCTION F(N)
      INTEGER N,F
      F=N
      END
