       IMPLICIT REAL*4(A),REAL*8(B),REAL*8(C)
       IMPLICIT COMPLEX*8(D),COMPLEX*16(E),COMPLEX*16(F)
       INTEGER*4 N/2/
       COMMON /BLK01/ R1,R2,R3,R4,R5,R6,R7,R8,R9
       REAL*  4 R1(10,10),R2(10,10),R3(10,10),R4(10,10)
       REAL*  4 R5(10,10),R6(10,10),R7(10,10),R8(10,10),R9(10,10)
       A1=0
       A2=0
       A3=0
       A4=0
       A5=0
       A6=0
       A7=0
       A8=0

       DO 10 I=1,10
         A1=A1+SIN(R1(I,1))
         A2=A2+SIN(R1(I,2))
         A3=A3+SIN(R1(I,3))
         A4=A4+SIN(R1(I,4))
         A5=A5+SIN(R1(I,5))
         A6=A6+SIN(R1(I,6))
         A7=A7+SIN(R1(I,7))
         A8=A8+SIN(R1(I,8))
10     CONTINUE
       WRITE(6,999) A1,A2,A3,A4,A5,A6,A7,A8
999    FORMAT(10G20.6)

       DO 20 I=1,10
         A1=A1+SIN(R1(I,9))*2.0
20     CONTINUE
       WRITE(6,998) A1
998    FORMAT(10G20.6)

       DO 30 I=1,10
         A1=A1+SIN(R2(I,9))*2.0
         A2=A2+SIN(R3(I,9))*2.0
         A3=A3+SIN(R4(I,9))*2.0
         A4=A4+SIN(R2(I,9))*2.0
30     CONTINUE
       WRITE(6,997) A1,A2,A3,A4
997    FORMAT(10G20.6)

       DO 40 I=1,10
         A1=SIN(R2(I,9))*2.0
         A2=A2+SIN(R3(I,9))*2.0+A1
         A3=SIN(R4(I,9))*2.0
         A4=A4+(SIN(R2(I,9))+A3)*2.0
40     CONTINUE

       DO 50 J=1,10
       DO 50 I=1,10
         R5(I,J)=SIN(R2(J,9))*2.0
         R6(I,J)=A2+SIN(R3(J,9))*2.0+A1
         R7(I,J)=SIN(R4(J,9))*2.0*A3
         R8(I,J)=A4+A4+(SIN(R2(J,9))+A3)*2.0
         R9(I,J)=R5(I,J)+R6(I,J)+R8(I,J)
50     CONTINUE
       WRITE(6,990) A1,A2,A3,A4,R9
       WRITE(6,990) R1(1,1),R9(1,1)
990    FORMAT(10G20.6)
       STOP
       END
       SUBROUTINE SUB(IA)
       RETURN
       END
       BLOCK DATA
       COMMON /BLK01/ R1,R2,R3,R4,R5,R6,R7,R8,R9
       REAL*  4 R1(10,10),R2(10,10),R3(10,10),R4(10,10)
       REAL*  4 R5(10,10),R6(10,10),R7(10,10),R8(10,10),R9(10,10)
       DATA R1/100*1.0/,R2/100*1.0/,R3/100*1.0/,R4/100*1.0/
       END
