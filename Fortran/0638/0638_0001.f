         REAL*4 R1A(100),R1B(100),R1C(100),R1D(100)
         REAL*4 R2A(100),R2B(100),R2C(100),R2D(100)
         REAL*4 R3A(100),R3B(100),R3C(100),R3D(100)
         REAL*4 R4A(100),R4B(100),R4C(100),R4D(100)
         REAL*4 R5A(100),R5B(100),R5C(100),R5D(100)
         REAL*4 R6A(100),R6B(100),R6C(100),R6D(100)
         data R1A/100*1./,R1B/100*1./,R1C/100*1./,R1D/100*1./
         data R2A/100*1./,R2B/100*1./,R2C/100*1./,R2D/100*1./
         data R3A/100*1./,R3B/100*1./,R3C/100*1./,R3D/100*1./
         data R4A/100*1./,R4B/100*1./,R4C/100*1./,R4D/100*1./
         data R5A/100*1./,R5B/100*1./,R5C/100*1./,R5D/100*1./
         data R6A/100*1./,R6B/100*1./,R6C/100*1./,R6D/100*1./
         CALL SUB1(R1A,R1B,R1C,R1D)
         CALL SUB2(R2A,R2B,R2C,R2D)
         CALL SUB3(R3A,R3B,R3C,R3D)
         CALL SUB4(100,R4A,R4B,R4C,R4D)
         CALL SUB5(R5A,R5B,R5C,R5D)
         CALL SUB6(R6A,R6B,R6C,R6D)

         DO 10 I=2,10,2
           R6A(I)=R1B(I-1)
10       CONTINUE
         WRITE(6,*) R1A,R1B,R1C,R1D
         WRITE(6,*) R2A,R2B,R2C,R2D
         WRITE(6,*) R3A,R3B,R3C,R3D
         WRITE(6,*) R4A,R4B,R4C,R4D
         WRITE(6,*) R5A,R5B,R5C,R5D
         WRITE(6,*) R6A,R6B,R6C,R6D
         STOP
         END


         SUBROUTINE SUB1(RA,RB,RC,RD)
         REAL*4 RA(100),RB(100),RC(100),RD(100)
         DO 100 I=2,10,2
           RA(I)=I
           RB(I)=I
           RC(I)=I
           RD(I)=I
100      CONTINUE
         DO 101 I=1,9,2
           RA(I)=RA(10)
           RB(I)=I
           RC(I)=I
           RD(I)=I
101      CONTINUE
         RETURN
         END


         SUBROUTINE SUB2(RA,RB,RC,RD)
         REAL*4 RB(10,10),RA(100),RC(10,10),RD(10,10)
         DO 200 J=1,10
         DO 200 I=1,10
         RA(I)=1.0
         RB(I,J)=J
         RC(J,I)=I
         RD(I,J)=1.0
         RA(I)=0.0
         RA(I+10)=1.0
         RA(I+20)=2.0
         RA(I+30)=3.0
         RA(I+40)=4.0
         RA(I+50)=5.0
         RA(I+60)=6.0
         RA(I+70)=7.0
         RA(I+80)=8.0
         RA(I+90)=9.0
200      CONTINUE
         RETURN
         END


         SUBROUTINE SUB3(RA,RB,RC,RD)
         REAL*4  RA(100),RB(100),RC(10,10),RD(10,10)
         DO 300 J=1,10
           DO 301 I=1,10
             RC(I,J)=I
             RD(I,J)=J
             RB(I)=I
301        CONTINUE
           DO 300 I=1,100
             RA(I)=I
             RB(I)=2.0
300      CONTINUE
         RETURN
         END


         SUBROUTINE SUB4(N,RA,RB,RC,RD)
         REAL*4  RA(N),RB(N),RC(N),RD(N)
         DO 400 I=1,N
           RA(I)=N
           RB(I)=N+1
           RC(I)=RA(I)
           RD(I)=RC(I)
400      CONTINUE
         RETURN
         END


         SUBROUTINE SUB5(RA,RB,RC,RD)
         REAL*4  RA(100),RB(100),RC(10,10),RD(10,10)
         integer*4 min0(100,100),i,j
         do i=1,100
           do j=1,100
              min0(i,j)=1
           enddo
         enddo
         DO 500 IIII=1,2
         DO 500 III=1,1
         DO 500 II=1,2
         DO 500 I=1,100
         RA(I)=III
         RB(I)=IIII
         RC(MIN0(10,I),II)=II
         RD(MIN0(I,10),III)=III+I+II
500      CONTINUE
         RETURN
         END


         SUBROUTINE SUB6(RA,RB,RC,RD)
         REAL*4  RA(100),RB(100),RC(10,10),RD(10,10)
         integer*4 min0(100,100),i,j
         do i=1,100
           do j=1,100
              min0(i,j)=1
           enddo
         enddo
         J=0
         DO 500 IIII=1,2
         DO 500 III=1,3
         J=J+1
         DO 500 II=1,2
         DO 500 I=1,100
         RA(I)=III
         RB(I)=IIII
         RC(MIN0(10,I),II)=II+J
         RD(MIN0(I,10),III)=III+I+II+IIII
500      CONTINUE
         RETURN
         END
