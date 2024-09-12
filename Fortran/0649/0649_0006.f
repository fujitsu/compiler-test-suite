      PROGRAM MAIN                                                      00000700
      CALL SUBZ()                                                       00000800
      PRINT *,'*** PASS ***'                                            00000900
      END                                                               00001000
      SUBROUTINE SUBZ()                                                 00001100
      DATA A/0.0/                                                       00001200
      DATA B/0.0/                                                       00001300
      EXTERNAL SUB1,SUB2                                                00001400
      CALL SUB1(A)                                                      00001500
      CALL SUB2(B)                                                      00001600
      PRINT *,'*** OK   ***'                                            00001700
      END                                                               00001800
      SUBROUTINE SUB1(A)                                                00001900
      A=A+1.0                                                           00002000
      END                                                               00002100
      SUBROUTINE SUB2(B)                                                00002200
      B=B+2.0                                                           00002300
      END                                                               00002400
