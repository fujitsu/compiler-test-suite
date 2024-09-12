         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)

         REAL*8 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)
         REAL*4 R5A(100),R5B(100),R5C(100),R5D(100)
         COMMON /BLK1/R6A,R6B,R6C,R6D
         EQUIVALENCE (R6A,R7A),(R6B,R7B)
         COMMON /BLK2/R8A(10,10),R8B(10,10),R8C(1,100),R8D
         REAL*8 R6A(100),R6B(100),R6C(100),R6D(100)
         REAL*8 R7A(100),R7B(100),R7C(100),R7D(100)
         REAL*8 R8A,R8B,R8C,R8D(2,50)
         REAL*8 R9A(100),R9B(100),R9C(100),R9D(100)
         R4D = 0
         R3A = 0
         R3B = 0
         CALL SUB1(R1A,R1B,R1C,R1D)
         CALL SUB2(R2A,R2B,R2C,R2D)
         CALL SUB3(R3A,R3B,R3C,R3D)
         CALL SUB4(R4A,R4B,R4C,R4D)
         CALL SUB5(R5A,R5B,R5C,R5D)
         CALL SUB6(R6A,R6B,R6C,R6D)
         CALL SUB7(R7A,R7B,R7C,R7D)
         R8A(1,1)=R7A(10)
         CALL SUB8(R7A,R7B,R7C,R7D)
         CALL SUB9(R9A,R9B,R9C,R9D)

         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         WRITE(6,*) R5A,R5B,R5C,R5D
         WRITE(6,*) R6A,R6B,R6C,R6D
         WRITE(6,*) R9A,R9B,R9C,R9D

         STOP
         END

         SUBROUTINE SUB1(RA,RB,RC,RD)
         REAL*4 RA(100),RB(100),RC(10,10),RD(20,5)
         CALL INIT(RA)
         CALL INIT(RB)
         CALL INIT(RC)
         CALL INIT(RD)
         RB(1)=1.0
         RD(20,5)=2.0
         RETURN
         END


         SUBROUTINE SUB2(RA,RB,RC,RD)
         REAL*4 RA(100),RB(100),RC(10,10),RD(20,5)
         CALL INIT(RA)
         CALL INIT(RB)
         CALL INIT(RC)
         CALL INIT(RD)
         RC(1,1)=10.0
         DO 200 I=2,10
         RA(I)=I
         RB(I)=FLOAT(I)
         RC(I,1)=FLOAT(I)+2.0
         RC(I,10)= 5.0
         RD(I,5)=RC(1,1)
200      CONTINUE
         RETURN
         END


         SUBROUTINE SUB3(RA,RB,RC,RD)
         REAL*8 RA(100),RB(100),RC(10,10),RD(20,5)
         RA(1)=2.0
         DO 300 J=1,5
           RA(J)=DFLOAT(J)
         DO 300 I=1,20
           RB(I)=I
           GOTO 350
360        CONTINUE
           RB(I+20)=RB(I)+4.0
           RC(MIN(I,10),J) = 2.0
           RC(MIN(10,I),J+5)=4.0
           RD(I,J)=1.0
300      CONTINUE
         RB(1)=1.0
         RETURN
350      CONTINUE
           DO 370 K=5,78
             RA(K-1)=8.0
370          RB(K+18)=18.0
           GOTO 360
         END


         SUBROUTINE SUB4(RA,RB,RC,RD)
         REAL*4  RA(100),RB(100),RC(10,10),RD(20,5)

         CALL INIT(RA)
         CALL INIT(RB)
         CALL INIT(RC)
         DO 400 I=1,2
         CALL INIT(RB)
         CALL INIT(RC)
         RA(2)=1.0
         RA(1)=2.0
400      CONTINUE
         CALL INIT(RA)

         DO 401 I=1,10
           RA(I+10)=RA(I+80)+8.0
           RC(I,10)=RA(I)
           RD(I,MIN0(5,I))=RB(I+27)
401      CONTINUE
         RETURN
         END


         SUBROUTINE SUB5(RA,RB,RC,RD)
         REAL*4  RA(100),RB(100),RC(10,10),RD(20,5)
         CALL INIT(RA)
         CALL INIT(RB)
         CALL INIT(RC)
         CALL INIT(RD)
         DO 500 J=1,5
         DO 500 I=1,10
         RA(I)=2.0
         RB(I+10)=1.
         RC(I,J)=3.0
         RD(I,J)=4.0
500      CONTINUE
         RA(80)=1.0
         RETURN
         END


         SUBROUTINE SUB6(RA,RB,RC,RD)
         REAL*8  RA(100),RB(100),RC(10,10),RD(20,5)
         CALL INITD(RA)
         CALL INITD(RB)
         CALL INITD(RC)
         CALL INITD(RD)
         DO 600 J=1,5
         DO 600 I=1,10
         RA(I)=2.0
         RB(I+10)=1.
         RC(I,J)=3.0
         RD(I,J)=4.0
600      CONTINUE
         DO 601 I=1,5
           RC(10,I)=DFLOAT(I)
           RD(9,I)=DFLOAT(I+2)
           RC(9,I)=RD(8,I)
601      CONTINUE
         RETURN
         END


         SUBROUTINE SUB7(RA,RB,RC,RD)
         REAL*8  RA(100),RB(100),RC(10,10),RD(20,5)
         CALL INITD(RA)
         CALL INITD(RB)
         CALL INITD(RC)
         CALL INITD(RD)
         DO 700 J=1,5
         RC(J,J)=1.0
700      CONTINUE
         RA(10)=1.0
         DO 701 I=1,10
         RD(I,MAX0(IABS(I-5),5))=DFLOAT(I)+RA(1)+RB(I)
701      CONTINUE
         RETURN
         END


         SUBROUTINE SUB8(RA,RB,RC,RD)
         COMMON /BLK2/R8A(10,10),R8B(10,10),R8C(1,100),R8D
         REAL*8 R8A,R8B,R8C,R8D(2,50),R8E(100)
         REAL*8  RA(100),RB(100),RC(10,10),RD(20,5)
         CALL INITD(R8A)
         CALL INITD(R8B)
         CALL INITD(R8C)
         CALL INITD(R8D)
         CALL INITD(R8E)
         CALL INITD(RB)
         CALL INITD(RA)
         DO 800 LK=1,2
         DO 800 K=1,2
         DO 800 J=1,5
         DO 800 I=1,10
         RC(I,I)=R8B(J,K)
         RD(I,J)=R8B(K,I)+R8D(2,J)+K
         RA(J*I)=R8B(I,J)+FLOAT(LK)+LK+I+J
         R8A(I,1)=R8C(1,I+J)+R8E(100)
800      CONTINUE
         RETURN
         END



         SUBROUTINE SUB9(RA,RB,RC,RD)
         REAL*8  RA(100),RB(100),RC(100),RD(100)
         REAL*4  R9A(100,10),LK
         CALL INIT(R9A(1,1))
         CALL INIT(R9A(1,2))
         CALL INIT(R9A(1,3))
         CALL INIT(R9A(1,4))
         CALL INIT(R9A(1,5))
         CALL INIT(R9A(1,6))
         CALL INIT(R9A(1,7))
         CALL INIT(R9A(1,8))
         CALL INIT(R9A(1,9))
         CALL INIT(R9A(1,10))
         CALL INITD(RA)
         CALL INITD(RB)
         CALL INITD(RC)
         CALL INITD(RD)
         LK=RA(1)
         DO 900 LLK=1,2
         DO 900 J=1,5
         DO 900 I=1,10
         RC(I)=RB(J)**2
         RD(I)=RB(LLK)+RD(20)+LLK
         RA(J*I)=RB(I)+LK+LLK+I+J
         RA(I)=RC(I+J)+RA(100)+RC(1)
          DO 901 II=1,12
901       CALL INIT(R9A(1,1))
900      CONTINUE
         RD(99)=R9A(1,1)
         RETURN
         END


         SUBROUTINE INIT(RA)
         REAL*4  RA(100)
         REAL*8  RAD(100)
         REAL*4  X(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
         REAL*8  Y(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
         DO 1000 J=1,2
           DO 1001 II=1,5
             DO 1001 I=1,100
               RA(I)=X(J*II)
               RA(I)=X(J)
               RA(I)=X(II)
               RA(I)=X(MIN0(10,I))
1001       CONTINUE
           DO 1000 II=1,MAX0(1,J)
             DO 1000 I=1,10,2
               RA(I)=X(J*II)
               RA(I)=X(J)
               RA(I)=X(I)
1000       CONTINUE
         RETURN
         ENTRY INITD(RAD)
         DO 2000 J=1,2
           DO 2001 II=1,5
             DO 2001 I=1,100
               RAD(I)=Y(J*II)
               RAD(I)=Y(J)
               RAD(I)=Y(II)
               RAD(I)=Y(MIN0(10,I))
2001       CONTINUE
           DO 2000 II=1,MAX0(1,J)
             DO 2000 I=1,10,2
               RAD(I+2)=Y(J*II)
               RAD(I+22)=Y(J)
               RAD(I+22+I)=Y(I)
2000       CONTINUE
         RETURN
         END
         BLOCK DATA
         COMMON /BLK2/R8A,R8B,R8C,R8D
         REAL*8 R8A(100),R8B(100),R8C(100),R8D(100)
         DATA R8A/100*1.0/,R8B/100*1.0/
         DATA R8C/100*1.0/,R8D/100*1.0/
         END
