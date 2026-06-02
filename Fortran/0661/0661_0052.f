      CALL S1
      CALL S2
      PRINT *,'PASS'
      END
      SUBROUTINE S1
      IMPLICIT LOGICAL(L),LOGICAL(M)
      LT =.TRUE.
      LF =.FALSE.
      MT =.TRUE.
      MF =.FALSE.
      L01= LT.XOR.LT
      L02= LT.XOR.LF
      L03= LT.XOR.MT
      L04= LT.XOR.MF
      L05= LT.XOR.LT
      L06= LT.XOR.LF
      L07= LT.XOR.MT
      L08= LT.XOR.MF
      M01= LT.XOR.LT
      M02= LT.XOR.LF
      M03= LT.XOR.MT
      M04= LT.XOR.MF
      M05= LT.XOR.LT
      M06= LT.XOR.LF
      M07= LT.XOR.MT
      M08= LT.XOR.MF
      IF (     L01) PRINT *,'FAIL'
      IF (.NOT.L02) PRINT *,'FAIL'
      IF (     L03) PRINT *,'FAIL'
      IF (.NOT.L04) PRINT *,'FAIL'
      IF (     L05) PRINT *,'FAIL'
      IF (.NOT.L06) PRINT *,'FAIL'
      IF (     L07) PRINT *,'FAIL'
      IF (.NOT.L08) PRINT *,'FAIL'
      IF (     M01) PRINT *,'FAIL'
      IF (.NOT.M02) PRINT *,'FAIL'
      IF (     M03) PRINT *,'FAIL'
      IF (.NOT.M04) PRINT *,'FAIL'
      IF (     M05) PRINT *,'FAIL'
      IF (.NOT.M06) PRINT *,'FAIL'
      IF (     M07) PRINT *,'FAIL'
      IF (.NOT.M08) PRINT *,'FAIL'
      IF ( LT.XOR.LT)PRINT *,'FAIL'
      IF ( .NOT.(LT.XOR.LF))PRINT *,'FAIL'
      IF ( LT.XOR.(LT.XOR.LF))PRINT *,'FAIL'
      IF ( LT.XOR.MT)PRINT *,'FAIL'
      IF ( .NOT.(LT.XOR.MF))PRINT *,'FAIL'
      IF ( LT.XOR.(LT.XOR.MF))PRINT *,'FAIL'
      IF ( LT.XOR.LT)PRINT *,'FAIL'
      IF ( LT.XOR.(LT.XOR.LF))PRINT *,'FAIL'
      IF ( LT.XOR.MT)PRINT *,'FAIL'
      IF ( LT.XOR.(LT.XOR.MF))PRINT *,'FAIL'
      IF ( MT.XOR.MT)PRINT *,'FAIL'
      IF ( .NOT.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( MT.XOR.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( MT.XOR.MT)PRINT *,'FAIL'
      IF ( .NOT.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( LT.XOR.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( LT.XOR.MT)PRINT *,'FAIL'
      IF ( LT.XOR.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( LT.XOR.MT)PRINT *,'FAIL'
      IF ( LT.XOR.(LT.XOR.MF))PRINT *,'FAIL'
      IF ( MT.XOR.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( MT.XOR.MT)PRINT *,'FAIL'
      IF ( MT.XOR.(MT.XOR.MF))PRINT *,'FAIL'
      IF ( MT.XOR.MT)PRINT *,'FAIL'
      IF ( MT.XOR.(LT.XOR.MF))PRINT *,'FAIL'
      END
      SUBROUTINE S2
      IMPLICIT LOGICAL(L),LOGICAL(M)
      DIMENSION LT(2),LF(2),MT(2),MF(2)
      DIMENSION L01(2),L02(2),L03(2),L04(2),L05(2),L06(2),L07(2),L08(2)
      DIMENSION M01(2),M02(2),M03(2),M04(2),M05(2),M06(2),M07(2),M08(2)
      LT(2) =.TRUE.
      LF(2) =.FALSE.
      MT(2) =.TRUE.
      MF(2) =.FALSE.
      L01(2)= LT(2).XOR.LT(2)
      L02(2)= LT(2).XOR.LF(2)
      L03(2)= LT(2).XOR.MT(2)
      L04(2)= LT(2).XOR.MF(2)
      L05(2)= LT(2).XOR.LT(2)
      L06(2)= LT(2).XOR.LF(2)
      L07(2)= LT(2).XOR.MT(2)
      L08(2)= LT(2).XOR.MF(2)
      M01(2)= LT(2).XOR.LT(2)
      M02(2)= LT(2).XOR.LF(2)
      M03(2)= LT(2).XOR.MT(2)
      M04(2)= LT(2).XOR.MF(2)
      M05(2)= LT(2).XOR.LT(2)
      M06(2)= LT(2).XOR.LF(2)
      M07(2)= LT(2).XOR.MT(2)
      M08(2)= LT(2).XOR.MF(2)
      IF (     L01(2)) PRINT *,'FAIL'
      IF (.NOT.L02(2)) PRINT *,'FAIL'
      IF (     L03(2)) PRINT *,'FAIL'
      IF (.NOT.L04(2)) PRINT *,'FAIL'
      IF (     L05(2)) PRINT *,'FAIL'
      IF (.NOT.L06(2)) PRINT *,'FAIL'
      IF (     L07(2)) PRINT *,'FAIL'
      IF (.NOT.L08(2)) PRINT *,'FAIL'
      IF (     M01(2)) PRINT *,'FAIL'
      IF (.NOT.M02(2)) PRINT *,'FAIL'
      IF (     M03(2)) PRINT *,'FAIL'
      IF (.NOT.M04(2)) PRINT *,'FAIL'
      IF (     M05(2)) PRINT *,'FAIL'
      IF (.NOT.M06(2)) PRINT *,'FAIL'
      IF (     M07(2)) PRINT *,'FAIL'
      IF (.NOT.M08(2)) PRINT *,'FAIL'
      IF ( LT(2).XOR.LT(2))PRINT *,'FAIL'
      IF ( .NOT.(LT(2).XOR.LF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.(LT(2).XOR.LF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( .NOT.(LT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.(LT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.LT(2))PRINT *,'FAIL'
      IF ( LT(2).XOR.(LT(2).XOR.LF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( LT(2).XOR.(LT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( MT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( .NOT.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( MT(2).XOR.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( MT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( .NOT.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( LT(2).XOR.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( LT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( LT(2).XOR.(LT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( MT(2).XOR.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( MT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( MT(2).XOR.(MT(2).XOR.MF(2)))PRINT *,'FAIL'
      IF ( MT(2).XOR.MT(2))PRINT *,'FAIL'
      IF ( MT(2).XOR.(LT(2).XOR.MF(2)))PRINT *,'FAIL'
      END
