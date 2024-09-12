       INTEGER * 4 I4001,I4002,I4003,I4004,I4005
       REAL    * 4 R4001,R4002,R4003,R4004,R4005
       REAL    * 8 R8001,R8002,R8003,R8004,R8005
       COMPLEX *16 C1605
       INTEGER * 4 I4A01(20),I4A02(20),I4A03(20),I4A04(20)
       REAL    * 4 R4A01(20),R4A02(20),R4A03(20),R4A04(20)
       REAL    * 8 R8A01(20),R8A02(20),R8A03(20)
       LOGICAL * 1 L1A01(20),L1A02(20),L1A03(20)
       LOGICAL * 4 L4A01(20),L4A02(20),L4A03(20),L4A04(20)
       COMPLEX *16 C16A1(20),C16A2(20)
       DATA I4A01/20*1/,I4A02/20*2/,I4A03/20*3/,I4A04/20*4/
       DATA I4001/1/,I4002/2/,I4003/3/,I4004/4/,I4005/5/
       DATA R4A01/20*1.1/,R4A02/20*2.2/,R4A03/20*3.3/,R4A04/20*4.4/
       DATA R8A01/20*3.0/,R8A02/20*4.0/,R8A03/20*5.0/
       DATA C16A1/20*(1.1,+1.0)/,C16A2/20*(2.2,-1.0)/
       DATA C1605/(1.1,+1.0)/
       DATA L1A01/10 * .TRUE., 10* .FALSE./
       DATA L1A02/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE./
       DATA L1A03/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE./
       DATA L4A01/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA L4A02/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA L4A03/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA L4A04/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       R4001 = 0
       R4002 = 0
       R4003 = 0
       R4004 = 0
       R4005 = 0
       R8001 = 0
       R8002 = 0
       R8003 = 0
       R8004 = 0
       R8005 = 0

       DO 10 I=1,20,2
         IF(.NOT.L4A01(I)) GOTO 10
         I4001 = MAX(I4001,I4A01(I))
         I4002 = I4002 + I4A01(I)
         R4001 = MAX(R4001,R4A01(I))
         R4002 = R4002 + R4A01(I)
         R8001 = MAX(R8001,R8A01(I))
         R8002 = R8002 + R8A01(I)
 10    CONTINUE
       DO 11 I=1,20
         IF (.NOT.L1A01(I)) GOTO 11
         I4003 = MIN(I4003,I4A02(I))
         I4004 = I4004 + I4A02(I)
         R4003 = MIN(R4003,R4A02(I))
         R4004 = R4004 + R4A02(I)
         R8003 = MIN(R8003,R8A02(I))
         R8004 = R8004 + R8A02(I)
 11    CONTINUE
       WRITE(6,*) I4001,I4002,I4003,I4004
       WRITE(6,*) R4001,R4002,R4003,R4004
       WRITE(6,*) R8001,R8002,R8003,R8004
       I4001 = 0
       I4002 = 0
       I4003 = 0
       R4001 = 0.0
       R4002 = 0.0
       R4003 = 0.0
       R8001 = 0.0
       R8002 = 0.0
       R8003 = 0.0
       DO 12 I=1,20
         IF (L4A01(I)) THEN
           IF (L1A01(I).AND.L1A02(I)) GOTO 12
           I4001 = MAX(I4001,I4A01(I))
           I4002 = I4002 + 1
           R4001 = MAX(R4001,R4A01(I))
           R4002 = R4002 + 1
         ENDIF
 12    CONTINUE
       DO 13 I=1,20
         IF (L4A02(I)) THEN
           IF (L1A01(I).AND.L1A03(I)) GOTO 13
           I4003 = MIN(I4003,I4A02(I))
           I4004 = I4004 + 1
           R4003 = MIN(R4003,R4A02(I))
           R4004 = R4004 + 1
         ENDIF
 13    CONTINUE
       WRITE(6,*) ' ** ITEM1-B **'
       WRITE(6,*) I4001,I4002,I4003,I4004
       WRITE(6,*) R4001,R4002,R4003,R4004
       DO 20 I=1,20
         IF (L4A01(I)) GOTO 20
         I4001    = MAX(I4001,I4A01(I))
         I4A01(I) = I4002 + I4A01(I)
         I4A01(I) = I4005 + I4A01(I)
 20    CONTINUE
       DO 21 I=1,20
         IF (L4A02(I)) GOTO 21
         I4001 = MAX(I4001,I4A02(I))
         I4A02(I) = I4002 + I4A02(I)
         I4A02(I) = I4005 + I4A02(I)
 21    CONTINUE
       DO 22 I=1,20
         IF (L4A01(I)) GOTO 22
         I4003 = MIN(I4003,I4A01(I))
         I4A03(I) = I4004 + I4A03(I)
         I4A03(I) = I4005 + I4A01(I)
 22    CONTINUE
       DO 23 I=1,20
         IF (L4A02(I)) GOTO 23
         I4004 = MIN(I4004,I4A04(I))
         I4A04(I) = I4003 + I4A04(I)
         I4A04(I) = I4003 + I4A04(I)
 23    CONTINUE
       WRITE(6,*) '** ITEM1-C **'
       WRITE(6,*) I4001,I4002,I4003,I4004
       WRITE(6,*) R4001,R4002,R4003,R4004
       WRITE(6,*) I4A01,I4A02,I4A03,I4A04

       DO 40 I=1,20
         IF (.NOT.L4A04(I)) GOTO 40
         I4A01(I) = (I4A02(I) + I4002) - (I4A03(I) + I4003)
         I4001    = MAX(I4001,I4A01(I))
         I4A02(I) = (I4A02(I) - I4003) - (I4A04(I) - I4003)
         I4002    = MAX(I4002,I4A02(I))
         I4A03(I) = (I4A03(I) * R4001) + (I4A03(I) * I4003)
         R4A01(I) = R4A01(I) + R4005
         R4001    = MAX(R4001,R4A01(I))
         R4A02(I) =  R4A02(I)+R4A01(I)
         R4002    = MAX(R4002,R4A02(I))
         R8A01(I) = R8A01(I) + R8005
         R8001    = MAX(R8001,R8A01(I))
         C16A1(I) = C16A1(I) + C1605
 40    CONTINUE
       WRITE(6,*) '** ITEM2-A **'
       WRITE(6,*) I4A01,I4A02,I4A03,I4001,I4002
       WRITE(6,*) R4A01,R4A02,R4001,R4002
       WRITE(6,*) R8A01,R8001,C16A1
       DO 41 I=1,20
         IF (.NOT.L4A03(I)) GOTO 41
         I4A02(I) = (I4A02(I) + I4002) - (I4A03(I) + I4003)
         I4002    = MAX(I4002,I4A02(I))
         I4A03(I) = (I4A02(I) - I4003) - (I4A04(I) - I4003)
         I4003    = MAX(I4003,I4A03(I))
         I4A04(I) = (I4A03(I) * R4001) + (I4A03(I) * I4003)
         R4A02(I) = R4A02(I) + R4005
         R4002    = MAX(R4002,R4A02(I))
         R4A03(I) =  R4A02(I)+R4A01(I)
         R4003    = MAX(R4003,R4A03(I))
         R8A02(I) = R8A01(I) + R8005
         R8002    = MAX(R8002,R8A02(I))
         C16A2(I) = C16A1(I) + C1605
 41    CONTINUE
       WRITE(6,*) '** ITEM2-A **'
       WRITE(6,*) I4A02,I4002,I4003
       WRITE(6,*) R4A02,R4002,R4003
       WRITE(6,*) R8A02,R8002
       DO 50 I=1,20
         IF (L4A01(I)) GOTO 50
         IF (I4A01(I).EQ.I4A02(I)) GOTO 50
           I4005 = MAX(I4005,I4A02(I))
           I4A01(I) = I4005 * 2
           R4005 = MAX(R4005,R4A02(I))
           R4A01(I) = R4005 * 2
           R8005  = MAX(R8005,R8A02(I))
           R8A01(I) = R8005 * 2
           R4A02(I) = R4005 / 2
 50    CONTINUE
       DO 51 I=1,20
         IF (L4A02(I)) GOTO 51
         IF (R4A01(I).GT.R4A02(I)) GOTO 51
           I4004  = MIN(I4004,I4A03(I))
           I4A02(I) = I4004 * 2 ** 2
           R4004  = MIN(R4004,R4A03(I))
           R8004  = MIN(R8004,R8A03(I))
           R8A02(I) = R8004 * 2 ** 2
           R4A01(I) = R4004 / 2 ** 2
 51    CONTINUE
       WRITE(6,*) '** ITEM3-A **'
       WRITE(6,*) I4005,I4A01,R4005,R4A01,R8005,R8A01,R4A02
       WRITE(6,*) I4004,I4A02,R4004,R8004,R8A02,R4A01
       STOP
       END
