      IMPLICIT LOGICAL(A,L)
      IMPLICIT COMPLEX (C),COMPLEX*16(D),COMPLEX*32(E)
      DIMENSION AR(100),IA(2)
      AR=.FALSE.
      L0=.FALSE.
      L1=.NOT. L0
      I1=1
      I2=2
      X1=1
      X2=2
      C1=(1.,1.)
      D1=(1.D0,1.D0)
      E1=(1.Q0,1.Q0)
      IA(1)=1
      IA(2)=2
      IF (L1            )AR(1)=.TRUE.
      IF (I1.EQ.2 .OR. I2.EQ.1 .OR. I2.EQ.2 ) AR(2)=.TRUE.
      IF (I1+1.EQ.0.OR.I1+1.EQ.1.OR.I1+1.EQ.2)AR(3)=.TRUE.
      IF (0.EQ.I1+1.OR.1.EQ.I1+1.OR.2.EQ.I1+1)AR(4)=.TRUE.
      IF (I1+1.EQ.I2+1.OR.I1+2.EQ.I2+2.OR.I1+3.EQ.I2+2)AR(5)=.TRUE.
      IF (AR(1)         )AR(6)=.TRUE.
      IF (IA(1).EQ.2.OR.IA(2).EQ.1.OR. IA(2).EQ.2 ) AR(7)=.TRUE.
      IF (I1+1.EQ.IA(1).OR.I1+1.EQ.IA(1).OR.I1+1.EQ.IA(2))AR(8)=.TRUE.
      IF (IA(1).EQ.I1+1.OR.IA(1).EQ.I1+1.OR.IA(2).EQ.I1+1)AR(9)=.TRUE.
      IF (IA(1).EQ.IA(2).OR.IA(1).EQ.IA(2).OR.IA(2).EQ.IA(2))
     1                                                    AR(10)=.TRUE.
      IF (AR(I1)         )AR(11)=.TRUE.
      IF (IA(I1).EQ.2.OR.IA(I2).EQ.1.OR. IA(I2).EQ.I2 ) AR(12)=.TRUE.
      IF (I1+1.EQ.IA(I1).OR.I1+1.EQ.IA(I1).OR.I1+1.EQ.IA(I2))
     1                                                  AR(13)=.TRUE.
      IF (IA(1).EQ.I1+1.OR.IA(1).EQ.I1+1.OR.IA(2).EQ.I1+1)AR(14)=.TRUE.
      IF (IA(1).EQ.IA(2).OR.IA(1).EQ.IA(2).OR.IA(2).EQ.IA(2))
     1                                                    AR(15)=.TRUE.
      IF (.NOT.L1.OR..NOT.L1.OR..NOT.L1.OR..NOT.L0) AR(16)=.TRUE.
      IF (.NOT.AR(1).OR..NOT.AR(2).OR..NOT.AR(3).OR..NOT.L0)
     1                                                   AR(17)=.TRUE.
      IF (I1.EQ.1 .OR. I1+1.EQ.2) AR(18)=.TRUE.
      IF (I1+1.EQ.2.OR.I1.EQ.1  ) AR(19)=.TRUE.
      IF (IA(1).EQ.1 .OR. IA(1)+1.EQ.2) AR(20)=.TRUE.
      IF (IA(1)+1.EQ.2.OR.IA(1).EQ.1  ) AR(21)=.TRUE.
      IF (I1.EQ.IA(1) .OR. I1+1.EQ.IA(2)) AR(22)=.TRUE.
      IF (I1+1.EQ.IA(2).OR.I1.EQ.IA(1)  ) AR(23)=.TRUE.
      IF (AR(1).AND.AR(2).AND.AR(3).AND.AR(4))AR(24)=.TRUE.
      IF (AR(I1).AND.AR(I2).AND.AR(I1+2).AND.AR(I2+2))AR(25)=.TRUE.
      IF (I1.EQ.1 .AND. .NOT.L0)AR(26)=.TRUE.
      IF (.NOT.L0 .AND. I1.EQ.1)AR(27)=.TRUE.
      IF (I1.EQ.1 .AND. IA(1).EQ.1)AR(28)=.TRUE.
      IF (I1.EQ.1 .AND. 1.EQ.IA(1))AR(29)=.TRUE.
      IF (I1.EQ.1 .AND. I2-1 .EQ.1)AR(30)=.TRUE.
      IF (I1.EQ.1 .OR . L1.AND.L1 )AR(31)=.TRUE.
      IF (I1.EQ.1 .OR .  .NOT.L0.AND.L1 )AR(32)=.TRUE.
      IF (I1.EQ.1 .OR .  L1.AND..NOT.L0 )AR(33)=.TRUE.
      IF (I1.EQ.1 .AND. .NOT.L0.AND.I1.EQ.1)AR(34)=.TRUE.
      IF (.NOT.L0 .AND. I1.EQ.1.AND.I1.EQ.1)AR(35)=.TRUE.
      IF (I1.EQ.1 .AND. IA(1).EQ.1.AND.I1.EQ.1)AR(36)=.TRUE.
      IF (I1.EQ.1 .AND. 1.EQ.IA(1).AND.I1.EQ.1)AR(37)=.TRUE.
      IF (I1.EQ.1 .AND. I2-1 .EQ.1.AND.I1.EQ.1)AR(38)=.TRUE.
      IF (I1.EQ.1 .OR . L1.AND.L1 .OR.I1.EQ.1)AR(39)=.TRUE.
      IF (I1.EQ.1 .OR .  .NOT.L0.AND.L1 .OR.I1.EQ.1)AR(40)=.TRUE.
      IF (I1.EQ.1 .OR .  L1.AND..NOT.L0 .OR.I1.EQ.1)AR(41)=.TRUE.
      IF (              .NOT.L0.AND.I1.EQ.1)AR(42)=.TRUE.
      IF (              I1.EQ.1.AND.I1.EQ.1)AR(43)=.TRUE.
      IF (              IA(1).EQ.1.AND.I1.EQ.1)AR(44)=.TRUE.
      IF (              1.EQ.IA(1).AND.I1.EQ.1)AR(45)=.TRUE.
      IF (              I2-1 .EQ.1.AND.I1.EQ.1)AR(46)=.TRUE.
      IF (              L1.AND.L1 .OR.I1.EQ.1)AR(47)=.TRUE.
      IF (               .NOT.L0.AND.L1 .OR.I1.EQ.1)AR(48)=.TRUE.
      IF (               L1.AND..NOT.L0 .OR.I1.EQ.1)AR(49)=.TRUE.
      IF (I1.EQ.1.) AR(50)=.TRUE.
      IF (X1.EQ.1 ) AR(51)=.TRUE.
      IF (X1.EQ.I1) AR(52)=.TRUE.
      IF (I1.EQ.X1) AR(53)=.TRUE.
      IF (I1.EQ.1 .AND. X1.EQ.I1)AR(54)=.TRUE.
      IF (X1.EQ.I1.AND. I1.EQ.1 )AR(55)=.TRUE.
      IF (.NOT.L0.OR.(I1.EQ.1.OR.I2.EQ.2.OR.2.EQ.I2))AR(56)=.TRUE.
      IF (I1.EQ.1.OR.I2.EQ.2.OR.2.EQ.I2.OR..NOT.L0)AR(57)=.TRUE.
      IF (L0.AND.L1.OR.(I1.EQ.1.OR.I2.EQ.2.OR.2.EQ.I2))AR(58)=.TRUE.
      IF (L0.OR.L1.AND.(I1.EQ.1.AND.I2.EQ.2.AND.2.EQ.I2))AR(59)=.TRUE.
      IF (L0.OR.L1.AND. I1.EQ.1.AND.I2.EQ.2.AND.2.EQ.I2 )AR(60)=.TRUE.
      IF (L0.AND.L1.OR. I1.EQ.1.OR.I2.EQ.2.OR.2.EQ.I2 )AR(61)=.TRUE.
      IF (L0.AND.L1.OR.I2-1.EQ.1.OR.I1+1.EQ.2.OR.2.EQ.I2 )AR(62)=.TRUE.
      IF (L0.AND.L1.OR.IA(1).EQ.1.OR.I2.EQ.2.OR.2.EQ.I2 )AR(63)=.TRUE.
      IF (L0.AND.L1.OR.I1.EQ.1.OR.I2.EQ.IA(2).OR.2.EQ.I2 )AR(64)=.TRUE.
      IF (IA(2).EQ.2 .OR.2.EQ.IA(2).OR.I1+1.EQ.2.OR.2.EQ.I1+1.OR.
     1    IA(2).EQ.IA(I2).OR.IA(I1).EQ.I2-1.OR.I1+1.EQ.IA(2).OR.
     2    I1+I2.EQ.I2+I1.OR.L1.AND..NOT.L0)AR(65)=.TRUE.
      IF (IA(2).EQ.2 .AND.2.EQ.IA(2).AND.I1+1.EQ.2.AND.2.EQ.I1+1.AND.
     1    IA(2).EQ.IA(I2).AND.IA(I1).EQ.I2-1.AND.I1+1.EQ.IA(2).AND.
     2    I1+I2.EQ.I2+I1.AND.L1.AND..NOT.L0)AR(66)=.TRUE.
      IF (I1.EQ.1 .OR. I2.EQ.2 .OR. IFUN().EQ.1 .OR. I1.EQ.1.OR.
     1    I2.EQ.2 .OR. I1.EQ.1) AR(67)=.TRUE.
      IF (I1.EQ.1.AND. I2.EQ.2.AND. IFUN().EQ.1.AND. I1.EQ.1.AND.
     1    I2.EQ.2.AND. I1.EQ.1) AR(68)=.TRUE.
      IF (I1.EQ.1 .OR. I2.EQ.2 .OR. IFUN().EQ.1 .OR. I1.EQ.1.OR.
     1    I2.EQ.2 .OR. I1.EQ.1.OR.IFUN().EQ.1) AR(69)=.TRUE.
      IF (I1.EQ.1.AND. I2.EQ.2.AND. IFUN().EQ.1.AND. I1.EQ.1.AND.
     1    I2.EQ.2.AND. I1.EQ.1.AND.IFUN().EQ.1) AR(70)=.TRUE.
      IF (IFUN().EQ.1 .OR. I2.EQ.2 .OR. IFUN().EQ.1 .OR. I1.EQ.1.OR.
     1    I2.EQ.2 .OR. I1.EQ.1.OR.IFUN().EQ.1) AR(71)=.TRUE.
      IF (IFUN().EQ.1.AND. I2.EQ.2.AND. IFUN().EQ.1.AND. I1.EQ.1.AND.
     1    I2.EQ.2.AND. I1.EQ.1.AND.IFUN().EQ.1) AR(72)=.TRUE.
      IF (IFUN().EQ.1 .OR. I2.EQ.2 .OR. I1.EQ.1     .OR. I1.EQ.1.OR.
     1    I2.EQ.2 .OR. I1.EQ.1.OR.IFUN().EQ.1) AR(71)=.TRUE.
      IF (IFUN().EQ.1.AND. I2.EQ.2.AND. I1.EQ.1    .AND. I1.EQ.1.AND.
     1    I2.EQ.2.AND. I1.EQ.1.AND.IFUN().EQ.1) AR(72)=.TRUE.
      IF (I1.EQ.   1  .OR. I2.EQ.2 .OR. I1.EQ.1     .OR. I1.EQ.1.OR.
     1    I2.EQ.2 .OR. I1.EQ.1.OR.IFUN().EQ.1) AR(73)=.TRUE.
      IF (I1.EQ.    1.AND. I2.EQ.2.AND. I1.EQ.1    .AND. I1.EQ.1.AND.
     1    I2.EQ.2.AND. I1.EQ.1.AND.IFUN().EQ.1) AR(74)=.TRUE.
      DO 99999 IL=1,74
         IF (.NOT.AR(IL)) PRINT *,'IL=',IL
99999    IF (.NOT.AR(IL)) STOP 'ERROR'
      PRINT *,'PASS'
      END
      FUNCTION IFUN()
      IFUN=1
      END
