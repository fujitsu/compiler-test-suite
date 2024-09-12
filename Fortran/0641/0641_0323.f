      PROGRAM MAIN
       REAL*8 DA1(256), DA2(256), DA3(256), DS1
       LOGICAL*4 LA1(256), LA2(256), LA3(256)
       DOUBLEPRECISION DD2
       PARAMETER (DD2 = 1D0 / 3.)
       REAL RR1
       DOUBLE PRECISION DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, 
     X   DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD1
       LOGICAL LL4, LL3, LL2, LL1


C$OMP PARALLEL SHARED (LA2,LA3,DA2,DA3,DA1,LA1) PRIVATE (DD3,DD4,DD5,DD6
C$OMP& ,DD7,DD8,DD9,LL1,LL2,LL3,LL4,DD10,DD11,DD12,DD13,DD14,DD15,DD16,
C$OMP& DD17,I,DD1,RR1)
C$OMP DO 
       DO I=1,253,4
        LL1 = MOD (I, 3) .EQ. 0
        LL2 = MOD (I + 1, 3) .EQ. 0
        LL3 = MOD (I + 2, 3) .EQ. 0
        LL4 = MOD (I + 3, 3) .EQ. 0
        LA2(I) = .NOT.LL1
        LA2(I+1) = .NOT.LL2
        LA2(I+2) = .NOT.LL3
        LA2(I+3) = .NOT.LL4
        LA3(I) = LL1 .AND. I .LE. 100
        LA3(I+1) = LL2 .AND. I .LE. 99
        LA3(I+2) = LL3 .AND. I .LE. 98
        LA3(I+3) = LL4 .AND. I .LE. 97

        DD10 = I
        DD11 = I + 1
        DD12 = I + 2
        DD13 = I + 3
        DD4 = DD10 - 3.
        DD5 = DD11 - 3.
        DD6 = DD12 - 3.
        DD1 = DD13 - 3.
        DD7 = DD4 * DD4
        DD8 = DD5 * DD5
        DD9 = DD6 * DD6
        DD3 = DD1 * DD1
        DD14 = DD7 - 12.5
        DD15 = DD8 - 12.5
        DD16 = DD9 - 12.5
        DD17 = DD3 - 12.5
        DA2(I) = DD14
        DD7 = DD10 * 0.5
        DA2(I+1) = DD15
        DD8 = DD11 * 0.5
        DA2(I+2) = DD16
        DD9 = DD12 * 0.5
        DA2(I+3) = DD17
        DD3 = DD13 * 0.5
        DA3(I) = DD14 - DD7
        DA3(I+1) = DD15 - DD8
        DA3(I+2) = DD16 - DD9
        DA3(I+3) = DD17 - DD3
        DA1(I+3) = DD13
        DA1(I+2) = DD12
        DA1(I+1) = DD11
        DA1(I) = DD10
        LA1(I+3) = LL4
        LA1(I+2) = LL3
        LA1(I+1) = LL2
        LA1(I) = LL1
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       RR1 = 1 / 2.5


C$OMP DO 
       DO I=1,255
        IF (DA2(I) .GT. 0D0) THEN
         DA1(I) = LOG (DA1(I) + I + DA2(I) * DD2)
        ELSE

         DA1(I) = LOG (DA1(I))
         IF (LA1(I)) THEN
          DA3(I) = DA1(I) + DA3(I)
          IF (.NOT.LA2(I) .AND. I .GT. 5) THEN
           DA3(I) = 1D0
          ELSE
           DA3(I) = DA3(I) - 2.
          END IF
         ELSE
          DA3(I) = -DA3(I)
         END IF
         IF (LA3(I)) THEN
          GO TO 3
         END IF
        END IF

        DA2(I) = LOG (I * RR1)
    3   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 600) DA1
       WRITE (6, 600) DA2
       WRITE (6, 600) DA3
  600  FORMAT(1H ,52(5(D15.8,1X)/))
      END
