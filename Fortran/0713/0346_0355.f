          REAL*4 D(10)
          COMPLEX  R1(10,2),R2(10,2),R3(10,2)
          DATA  R1,R2,R3/20*(2.0,1.0),20*(1.0,2.0),20*(3.0,1.0)/
          DATA  D/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
          COMPLEX  R4(10,2)
          DATA  R4/20*(7.0,2.0)/

          COMPLEX*16 R8(10,2),R5(10,2),R6(10,2)
          DATA  R8,R5,R6/20*(2.0,1.0),20*(1.0,1.0),20*(2.0,3.0)/
          COMPLEX*16 R7(10,2)
          DATA  R7/20*(7.0,1.0)/
          COMPLEX* 8 S1(10)
          COMPLEX*16 S2(10)

          DO 10 J= 1,2
          DO 10 I = 1 , 10
            IF(D(I) .LE. 4.0 )    S1(I) = R1(I,J) + R2(I,J)
            IF(D(I) .LT. 5.0 )    S1(I) = R3(I,J) + 10.0
            IF(D(I) .LE. 4.0 )    R4(I,J) = R1(I,J) + R2(I,J)
 10       CONTINUE
            PRINT *,R4

          DO 20 J= 1,2
          DO 20 I = 1 , 10
            IF(D(I) .LE. 4.0 ) S2(I)   = R8(I,J) + R5(I,J)
            IF(D(I) .LT. 5.0 ) S2(I)   = R6(I,J) + 1.0
            IF(D(I) .LE. 4.0 ) R7(I,J) = R8(I,J) + R5(I,J)
 20       CONTINUE
            PRINT *,R7
            END
