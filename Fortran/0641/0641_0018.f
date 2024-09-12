      LOGICAL*4 LD010(30), LD020(30)
      REAL*8 D010(40), D020(40), D030(40), D040(40)
      INTEGER*4 I010(20), I020(20)
      REAL*8 DSUM, DFND1, DFND2, DVAR1, DVAR2, DVAR3
      DATA LD010/20*.FALSE.,10*.TRUE./ 
      DATA I010/20*2/ 
      DATA I020/20*4/ 
      DATA D010/40*2.0D0/ 
      DATA D020/40*3.0D0/ 
      DATA D030/40*4.0D0/ 
      INTEGER K1, J1, I1, II1
      DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
      LOGICAL LL2, LL1

      DO II1=1,37,4
       D040(II1) = 0D0
       D040(II1+1) = 0D0
       D040(II1+2) = 0D0
       D040(II1+3) = 0D0
      END DO
      LL1 = LD010(1)
      LL2 = LD010(20)
      DO I1=2,22,10
       LD020(I1) = LL1
       LD020(I1+2) = LL1
       LD020(I1+4) = LL1
       LD020(I1+6) = LL1
       LD020(I1+8) = LL1
       LD020(I1-1) = LL2
       LD020(I1+1) = LL2
       LD020(I1+3) = LL2
       LD020(I1+5) = LL2
       LD020(I1+7) = LL2
      END DO

      DO I1=2,25
       DVAR1 = D010(I1) + D020(I1+1) + D030(I1+2) + D040(I1+3)
       D020(I1) = D030(I1+1) + D040(I1+3)
       D030(I1+2) = D020(I1+1) + D010(30)
       D010(I1) = DVAR1 * 0.5D0
       IF (D010(I1) .GE. D030(I1)) THEN
        DVAR2 = D030(I1) - D040(I1)
        DVAR3 = 0D0
       ELSE
        IF (LD020(I1)) THEN
         DVAR3 = D020(I1) - D040(I1)
         DVAR2 = 0D0
        ELSE
         DVAR2 = 0D0
         DVAR3 = 0D0
        END IF
       END IF
       D040(I1) = (D010(I1-1) + DVAR2) * (DVAR1 + DVAR3)
      END DO

      WRITE (6, *) (D010(K), K=2,25)
      WRITE (6, *) (D020(K), K=2,25)
      WRITE (6, *) (D030(K), K=5,27)
      WRITE (6, *) (D040(K), K=2,25)

      DSUM = 0D0
      DO J1=1,26,5
       DFND1 = D010(J1) + D040(31-J1)
       DFND2 = D020(J1) + D030(31-J1)
       DD1 = DMAX1 (DFND1, DFND2)
       DD2 = DMIN1 (DFND1, DFND2)
       DSUM = DSUM + DD1 - DD2
       D020(J1) = DD2
       D010(J1) = DD1
       DFND1 = D010(J1+1) + D040(30-J1)
       DFND2 = D020(J1+1) + D030(30-J1)
       DD3 = DMAX1 (DFND1, DFND2)
       DD4 = DMIN1 (DFND1, DFND2)
       DSUM = DSUM + DD3 - DD4
       D020(J1+1) = DD4
       D010(J1+1) = DD3
       DFND1 = D010(J1+2) + D040(29-J1)
       DFND2 = D020(J1+2) + D030(29-J1)
       DD5 = DMAX1 (DFND1, DFND2)
       DD6 = DMIN1 (DFND1, DFND2)
       DSUM = DSUM + DD5 - DD6
       D020(J1+2) = DD6
       D010(J1+2) = DD5
       DFND1 = D010(J1+3) + D040(28-J1)
       DFND2 = D020(J1+3) + D030(28-J1)
       DD7 = DMAX1 (DFND1, DFND2)
       DD8 = DMIN1 (DFND1, DFND2)
       DSUM = DSUM + DD7 - DD8
       D020(J1+3) = DD8
       D010(J1+3) = DD7
       DFND1 = D010(J1+4) + D040(27-J1)
       DFND2 = D020(J1+4) + D030(27-J1)
       DD9 = DMAX1 (DFND1, DFND2)
       DD10 = DMIN1 (DFND1, DFND2)
       DSUM = DSUM + DD9 - DD10
       D020(J1+4) = DD10
       D010(J1+4) = DD9
      END DO
      WRITE (6, *) '  DSUM = ', DSUM

      DSUM = 0D0
      DO I1=1,11,5
       D040(I1+15) = D010(I1)
       D040(I1+16) = D010(I1+1)
       D040(I1+17) = D010(I1+2)
       D040(I1+18) = D010(I1+3)
       D040(I1+19) = D010(I1+4)
       D030(I1+15) = D020(I1)
       D030(I1+16) = D020(I1+1)
       D030(I1+17) = D020(I1+2)
       D030(I1+18) = D020(I1+3)
       D030(I1+19) = D020(I1+4)
      END DO
      DO I1=1,15
       IF (LD010(I1) .AND. .NOT.LD020(I1)) THEN
        D010(I1) = D030(I1) + D040(I1)
        D020(I1) = D030(I1+15) + D040(I1+15)
        DFND1 = D020(I1+15) + D010(I1+1)
        DFND2 = DFND1 + D020(I1)
       ELSE
        DFND1 = DMAX1 (DABS (D030(I1)), DABS (D040(I1)))
        DFND2 = DMIN1 (DABS (D030(I1+15)), DABS (D040(I1+15)))
       END IF
       DSUM = DSUM + D010(I1) + D020(I1)
       D010(I1) = (DFND1 - DFND2) * D030(I1+15)
      END DO
      DVAR1 = 0D0
      DO J1=1,37,4
       DVAR1 = DVAR1 + D010(J1)
       DVAR1 = DVAR1 + D010(J1+1)
       DVAR1 = DVAR1 + D010(J1+2)
       DVAR1 = DVAR1 + D010(J1+3)
      END DO

      IF (DSUM .GE. DVAR1) THEN
       DO K1=1,17,4
        LD010(K1) = .TRUE.
        LD010(K1+1) = .TRUE.
        LD010(K1+2) = .TRUE.
        LD010(K1+3) = .TRUE.
        LD020(K1) = .FALSE.
        LD020(K1+1) = .FALSE.
        LD020(K1+2) = .FALSE.
        LD020(K1+3) = .FALSE.
       END DO
      END IF

      WRITE (6, *) (D010(I), I=1,15)
      WRITE (6, *) (D020(I), I=1,15)
      WRITE (6, *) (D030(J), J=16,30)
      WRITE (6, *) (D040(J), J=16,30)
      WRITE (6, *) LD010
      WRITE (6, *) LD020
      WRITE (6, *) DSUM, DVAR1

      STOP 
      END
