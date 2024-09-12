      PROGRAM MAIN                                                      00000700
      CALL SUBZ()                                                       00000800
      PRINT *,'*** PASS ***'                                            00000900
      END                                                               00001000
      SUBROUTINE SUBZ()                                                 00001100
      DATA A/0.0/                                                       00001200
      CALL SUB1(A)                                                      00001300
      PRINT *,'*** OK   ***'                                            00001400
      END                                                               00001500
      SUBROUTINE SUB1(A)                                                00001600
      EXTERNAL SUB                                                      00001700
      CALL SUB(A)                                                       00001800
      END                                                               00001900
      SUBROUTINE SUB(A)                                                 00002000
      A=A+1.0                                                           00002100
      END                                                               00002200
