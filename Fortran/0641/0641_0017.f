      PROGRAM MAIN
       REAL*8 D010(30), D020(30), D030(30), D040(30), D110(30,30), D120(
     X   30,30), D130(30,30), D210(-10:10), D220(-10:10), D230(-10:10)
       REAL*4 RINV
       REAL RDOP
       INTEGER*2 HDINC, HDTRM, HDINT
       INTEGER IT6, IT5, IT4, IT3, IT2, IT1
       PARAMETER (RDOP = 30., HDINC = 1, HDTRM = 30, HDINT = 1, IT6 = 30
     X   )
       PARAMETER (IT5 = 15, IT4 = 10, IT3 = 3, IT2 = 2, IT1 = 1)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)
       INTEGER K1, J1, I1
       DOUBLE PRECISION DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, 
     X   DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2

       DO I1=HDINT,26,5
        DD11 = 3D0
        DD12 = 3D0
        DD13 = 3D0
        DD14 = 3D0
        DD15 = 3D0
        D020(I1) = DD11 * 2D0
        D020(I1+1) = DD12 * 2D0
        D020(I1+2) = DD13 * 2D0
        D020(I1+3) = DD14 * 2D0
        D020(I1+4) = DD15 * 2D0
        D030(I1) = 4D0
        D030(I1+1) = 4D0
        D030(I1+2) = 4D0
        D030(I1+3) = 4D0
        D030(I1+4) = 4D0
        D040(I1) = 2D0 - DD11
        D040(I1+1) = 2D0 - DD12
        D040(I1+2) = 2D0 - DD13
        D040(I1+3) = 2D0 - DD14
        D040(I1+4) = 2D0 - DD15
        D010(I1+4) = DD15
        D010(I1+3) = DD14
        D010(I1+2) = DD13
        D010(I1+1) = DD12
        D010(I1) = DD11
       END DO
C$OMP PARALLEL SHARED (D030,D110,D010,D120,D130) PRIVATE (DD2,K1,J1)
C$OMP DO 
       DO K1=1,HDTRM
        DD2 = D030(K1) * 2D0
        DO J1=1,26,5
         D110(J1,K1) = D010(J1)
         D110(J1+1,K1) = D010(J1+1)
         D110(J1+2,K1) = D010(J1+2)
         D110(J1+3,K1) = D010(J1+3)
         D110(J1+4,K1) = D010(J1+4)
         D120(J1,K1) = 2D0
         D120(J1+1,K1) = 2D0
         D120(J1+2,K1) = 2D0
         D120(J1+3,K1) = 2D0
         D120(J1+4,K1) = 2D0
         D130(J1,K1) = DD2
         D130(J1+1,K1) = DD2
         D130(J1+2,K1) = DD2
         D130(J1+3,K1) = DD2
         D130(J1+4,K1) = DD2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I1=-10,8,3
        D210(I1) = 4D0
        D210(I1+1) = 4D0
        D210(I1+2) = 4D0
        D220(I1) = 5D0
        D220(I1+1) = 5D0
        D220(I1+2) = 5D0
        D230(I1) = 6D0
        D230(I1+1) = 6D0
        D230(I1+2) = 6D0
       END DO

       DO I1=2,8,3
        D010(I1*2+1) = D020(I1+5) + D030(I1*2+2)
        D010(I1*2+3) = D020(I1+6) + D030(I1*2+4)
        D010(I1*2+5) = D020(I1+7) + D030(I1*2+6)
       END DO

       DO I1=2,8,3
        DD5 = D040(I1+10) * 2D0
        DD6 = D040(I1+11) * 2D0
        DD3 = D040(I1+12) * 2D0
        D040(I1+1) = DD5 - D020(I1*2+1)
        D040(I1+2) = DD6 - D020(I1*2+3)
        D040(I1+3) = DD3 - D020(I1*2+5)
        DD5 = D010(I1-1) * D220(I1-1)
        DD6 = D010(I1) * D220(I1)
        DD3 = D010(I1+1) * D220(I1+1)
        D210(I1-8) = DD5 - D230(I1-10)
        D210(I1-7) = DD6 - D230(I1-9)
        D210(I1-6) = DD3 - D230(I1-8)
       END DO

       DO I1=2,10
        D030(I1*2+2) = D010(I1*2) + D040(I1)
        IF (I1 .LE. 5) THEN
         D220(I1-2) = D210(I1-10) + D230(I1*2-1)
        ELSE
         D230(I1-15) = D220(I1-13) - D210(I1-10)
        END IF
       END DO
       I = 11
       WRITE (6, *) (D010(I), I=5,21,2)
       WRITE (6, *) (D030(I), I=6,22)
       WRITE (6, *) (D040(I), I=3,21)
       WRITE (6, *) (D210(J), J=-6,2)
       WRITE (6, *) (D220(J), J=0,3)
       WRITE (6, *) (D230(J), J=-9,-1)

       DO I1=3,18,3
        DD16 = D110(I1+2,10) + D020(3)
        DD17 = D110(I1+3,10) + D020(3)
        DD18 = D110(I1+4,10) + D020(3)
        D020(I1+3) = D030(I1) + D010(3)
        D020(I1+4) = D030(I1+1) + D010(3)
        D020(I1+5) = D030(I1+2) + D010(3)
        D010(I1+3) = DD18
        D010(I1+2) = DD17
        D010(I1+1) = DD16
       END DO

       DO I1=3,18,3
        DD19 = D120(I1,30) * D130(I1,I1)
        DD20 = D120(I1+1,30) * D130(I1+1,I1+1)
        DD21 = D120(I1+2,30) * D130(I1+2,I1+2)
        D110(5,I1+3) = D040(10) / D020(I1+2)
        D110(5,I1+4) = D040(10) / D020(I1+3)
        D110(5,I1+5) = D040(10) / D020(I1+4)
        D040(I1+12) = DD21
        D040(I1+11) = DD20
        D040(I1+10) = DD19
       END DO
       I = 21
       WRITE (6, *) (D010(K), K=3,20)
       WRITE (6, *) (D020(K), K=6,23)
       WRITE (6, *) (D040(K), K=13,30)
       WRITE (6, *) ((D110(I,J), I=4,5), J=6,23)

       D210(9) = D220(2) + D230(6)
       D210(5) = D220(0) + D230(4)
       D210(1) = D220(-2) + D230(2)
       D210(-3) = D220(-4) + D230(0)
       D210(-7) = D220(-6) + D230(-2)
       DD7 = D010(14) * DD1
       DD8 = D010(12) * DD1
       DD9 = D010(10) * DD1
       DD10 = D010(8) * DD1
       DD4 = D010(6) * DD1
       D220(4) = D210(8) - DD7
       D220(2) = D210(4) - DD8
       D220(0) = D210(0) - DD9
       D220(-2) = D210(-4) - DD10
       D220(-4) = D210(-8) - DD4
       D230(8) = D020(19) * D030(24)
       D230(6) = D020(17) * D030(22)
       D230(4) = D020(15) * D030(20)
       D230(2) = D020(13) * D030(18)
       D230(0) = D020(11) * D030(16)
       WRITE (6, *) (D210(K), K=-7,9)
       WRITE (6, *) (D220(K), K=-4,4)
       WRITE (6, *) (D230(K), K=0,8)
       STOP 
      END
