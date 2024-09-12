      BLOCK DATA BLOCK1                                                 00000200
      COMMON /COM/ I                                                    00000300
      DATA I /1/                                                        00000400
      END                                                               00000500
      COMMON /COM/ I                                                    00000600
      EQUIVALENCE (I,IA)                                                00000700
      EQUIVALENCE (IP, IS)                                              00000800
      EQUIVALENCE (IL, IA)                                              00000900
      EQUIVALENCE (IP, IA)                                              00001000
      EQUIVALENCE (IC, IA)                                              00001100
      IF (IP.NE.1.OR.I.NE.1.OR.IA.NE.1.OR.                              00001200
     -    IS.NE.1.OR.IC.NE.1.OR.IL.NE.1) THEN                           00001300
         PRINT *,'NG'                                                   00001400
      ELSE                                                              00001500
         PRINT *,'OK'                                                   00001600
      ENDIF                                                             00001700
      END                                                               00001800
