          REAL  R1(10,2),R2(10,2),R3(10,2),D(10),S1(10)
          DATA  R1,R2,R3/20*2.0,20*1.0,20*3.0/
          DATA  D/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          DATA  S1/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          REAL  R4(10,2)
          DATA  R4/20*7.0/

          REAL*8  R8(10,2),R5(10,2),R6(10,2),S2(10)
          DATA  R8,R5,R6/20*2.0,20*1.0,20*3.0/
          REAL*8  R7(10,2)
          DATA  R7/20*7.0/

          INTEGER  IR1(10,2),IR2(10,2),IR3(10,2),ID(10),IS1(10)
          DATA  IR1,IR2,IR3/20*2,20*1,20*3/
          DATA  ID/1,2,3,4,5,6,7,8,9,10/
          REAL  IR4(10,2)
          DATA  IR4/20*777/
          DO 10 J= 1,2
          DO 10 I = 1 , 10
            IF(D(I) .LE. 4.0 ) S1(I)   = R1(I,J) + R2(I,J)
            IF(D(I) .LT. 5.0 ) S1(I)   = R3(I,J) + 10.0
            IF(D(I) .LE. 4.0 ) R4(I,J) = R1(I,J) + R2(I,J)
 10       CONTINUE
            PRINT *,R4

          DO 20 J= 1,2
          DO 20 I = 1 , 10
            IF(D(I) .LE. 4.0 ) S2(I)   = R8(I,J) + R5(I,J)
            IF(D(I) .LT. 5.0 ) S2(I)   = R6(I,J) + 1.0
            IF(D(I) .LE. 4.0 ) R7(I,J) = R8(I,J) + R5(I,J)
 20       CONTINUE
            PRINT *,R7

          DO 30 J= 1,2
          DO 30 I = 1 , 10
            IF(ID(I) .LE. 4   ) IS1(I)    = IR1(I,J) + IR2(I,J)
            IF(ID(I) .LT. 5   ) IS1(I)    = IR3(I,J) + 10
            IF(ID(I) .LE. 4   ) IR4(I,J)  = IR1(I,J) + IR2(I,J)
 30       CONTINUE
            PRINT *,IR4
            END
