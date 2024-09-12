      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      CALL SUB07
      CALL SUB08
      CALL SUB09
      CALL SUB10
      END
      SUBROUTINE SUB01
      REAL A(-20:0)/21*1.0/
      REAL B(-20:0)/21*1.0/
      DO 10 I=-19,-1
        A(I)=B(I)+1.0
   10 CONTINUE
      WRITE(6,*) (A(L),L=-5,0)
      END
      SUBROUTINE SUB02
      REAL A(-20000:0)/20001*1.0/
      REAL B(-20000:0)/20001*1.0/
      DO 10 I=-19999,-1
        A(I)=B(I)+1.0
   10 CONTINUE
      WRITE(6,*) (A(L),L=-5,0)
      END
      SUBROUTINE SUB03
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      N=10
      DO 10 I=1,N
        A(I)=+0.0
   10 CONTINUE
      M=99999
      DO 20 I=1,M
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      SUBROUTINE SUB04
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      IF(1.GT.0) THEN
        N=10
      ENDIF
      DO 10 I=1,N
        A(I)=+0.0
   10 CONTINUE
      IF(1.GT.0) THEN
        M=99999
      ENDIF
      DO 20 I=1,M
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      SUBROUTINE SUB05
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      INTEGER G
      G(N)=N
      DO 10 I=1,G(10)
        A(I)=+0.0
   10 CONTINUE
      DO 20 I=1,G(99999)
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      SUBROUTINE SUB06
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      INTEGER F
      DO 10 I=1,F(10)
        A(I)=+0.0
   10 CONTINUE
      DO 20 I=1,F(99999)
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      FUNCTION F(N)
      INTEGER N,F
      F=N
      END
      SUBROUTINE SUB07
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      N=10
      DO 10 I=N,1,-1
        A(I)=+0.0
   10 CONTINUE
      M=99999
      DO 20 I=M,1,-1
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      SUBROUTINE SUB08
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      IF(1.GT.0) THEN
        N=10
      ENDIF
      DO 10 I=N,1
        A(I)=+0.0
   10 CONTINUE
      IF(1.GT.0) THEN
        M=99999
      ENDIF
      DO 20 I=M,1
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      SUBROUTINE SUB09
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      INTEGER H
      H(N)=N
      DO 10 I=H(10),1,-1
        A(I)=+0.0
   10 CONTINUE
      DO 20 I=H(99999),1,-1
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
      SUBROUTINE SUB10
      REAL A(1:10)/10*1.0/
      REAL B(1:100000)/100000*1.0/
      INTEGER F
      DO 10 I=F(10),1,-1
        A(I)=+0.0
   10 CONTINUE
      DO 20 I=F(99999),1,-1
        B(I)=B(I)-1.0
   20 CONTINUE
      WRITE(6,*) (A(L),L=1,10)
      WRITE(6,*) (B(L),L=1,10)
      END
