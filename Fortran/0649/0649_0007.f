      PROGRAM MAIN                                                      00000700
      CALL SUBZ()                                                       00000800
      PRINT *,'*** PASS ***'                                            00000900
      END                                                               00001000
      SUBROUTINE SUBZ()                                                 00001100
      COMMON /X/A,B                                                     00001200
      EXTERNAL BLOCK1                                                   00001300
      PRINT *,A                                                         00001400
      PRINT *,B                                                         00001500
      PRINT *,'*** OK   ***'                                            00001600
      END                                                               00001700
      BLOCK DATA BLOCK1                                                 00001800
      COMMON /X/A,B                                                     00001900
      DATA A,B/1.0,2.0/                                                 00002000
      END                                                               00002100
