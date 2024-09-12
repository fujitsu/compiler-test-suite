      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      END
      SUBROUTINE SUB01
      REAL A(-20:0,10)/210*1.0/
      REAL B(-20:0,10)/210*1.0/
      DO 10 J=1,10
      DO 10 I=-19,-1
        A(I,J)=B(I,J)+1.0
   10 CONTINUE
      WRITE(6,*) ((A(L,K),L=-5,0),K=1,2)
      END
      SUBROUTINE SUB02
      REAL A(-20000:0,10)/200010*1.0/
      REAL B(-20000:0,10)/200010*1.0/
      DO 10 J=1,10
      DO 10 I=-19999,-1
        A(I,J)=B(I,J)+1.0
   10 CONTINUE
      WRITE(6,*) ((A(L,K),L=-5,0),K=1,2)
      END
      SUBROUTINE SUB03
      REAL A(1:10,10)/100*1.0/
      N=10
      DO 10 J=1,10
      DO 10 I=1,N
        A(I,J)=+0.0
   10 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,2)
      END
      SUBROUTINE SUB04
      REAL A(1:10,10)/100*1.0/
      IF(1.GT.0) THEN
        N=10
      ENDIF
      DO 10 J=1,10
      DO 10 I=1,N
        A(I,J)=+0.0
   10 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      END
      SUBROUTINE SUB05
      REAL A(1:10,10)/100*1.0/
      REAL B(1:100000,2)/200000*1.0/
      INTEGER G
      G(N)=N
      DO 10 J=1,10
      DO 10 I=1,G(10)
        A(I,J)=+0.0
   10 CONTINUE
      DO 20 J=1,2
      DO 20 I=1,G(99999)
        B(I,J)=B(I,J)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      WRITE(6,*) ((B(L,K),L=1,10),K=1,2)
      END
      SUBROUTINE SUB06
      REAL A(1:10,10)/100*1.0/
      REAL B(1:100000,2)/200000*1.0/
      INTEGER F
      DO 10 J=1,10
      DO 10 I=1,F(10)
        A(I,J)=+0.0
   10 CONTINUE
      DO 20 J=1,2
      DO 20 I=1,F(99999)
        B(I,J)=B(I,J)-1.0
   20 CONTINUE
      WRITE(6,*) ((A(L,K),L=1,10),K=1,10)
      WRITE(6,*) ((B(L,K),L=1,10),K=1,2)
      END
      FUNCTION F(N)
      INTEGER N,F
      F=N
      END
