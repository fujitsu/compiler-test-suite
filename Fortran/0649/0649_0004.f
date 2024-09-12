      PROGRAM MAIN                                                      00000700
      CALL SUBZ()                                                       00000800
      PRINT *,'*** PASS ***'                                            00000900
      END                                                               00001000
      SUBROUTINE SUBZ()                                                 00001100
      DATA A/0.0/                                                       00001200
      CALL SUB1(A)                                                      00001300
      CALL SUB2(A)                                                      00001400
      PRINT *,'*** OK   ***'                                            00001500
      END                                                               00001600
      SUBROUTINE SUB1(A)                                                00001700
      CALL SUB(A)                                                       00001800
      END                                                               00001900
      SUBROUTINE SUB2(A)                                                00002000
      EXTERNAL SUB                                                      00002100
      CALL SUB(A)                                                       00002200
      END                                                               00002300
      SUBROUTINE SUB(A)                                                 00002400
      A=A+1.0                                                           00002500
      END                                                               00002600
