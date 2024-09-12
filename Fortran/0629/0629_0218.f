       IMPLICIT REAL*8 (D)
       complex CD010(40), CD020(40)
       LOGICAL*4 LD020(10)
       data cd010/40*(2.,4.)/,cd020/40*(4.,3.)/
       data ld020/10*.false./

       INV2 = 41
       INV3 = 31
       DO I1=1,12
        INV2 = INV2 - 1
        CD020(INV2) = CD010(INV3) + 5
        INV3 = INV3 - 1
        CD010(INV3) = CD020(INV2-1) *2
       END DO
       WRITE (6, *) (CD020(K), K=20,40),INV2,INV3
      END
