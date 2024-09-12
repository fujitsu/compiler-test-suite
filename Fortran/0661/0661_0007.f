      I=1
      IF (I.EQ.1) GOTO 29
      STOP 'ERROR-A1'
119   STOP 'ERROR-A11'
129   STOP 'ERROR-A11'
139   STOP 'ERROR-A13'
 29   IF (I.NE.1) GOTO 119
      IF (I.GE.1) GOTO 39
      STOP 'ERROR-A2'
 39   IF (I.LE.1) GOTO 49
      STOP 'ERROR-A3'
 49   IF (I.GT.1) GOTO 129
      IF (I.LT.1) GOTO 139
      I=2
      IF (I-1.EQ.1) GOTO 2
      STOP 'ERROR-B1'
11    STOP 'ERROR-B11'
12    STOP 'ERROR-B11'
13    STOP 'ERROR-B13'
 2    IF (I-1.NE.1) GOTO 11
      IF (I-1.GE.1) GOTO 3
      STOP 'ERROR-B'
 3    IF (I-1.LE.1) GOTO 4
      STOP 'ERROR-B'
 4    IF (I-1.GT.1) GOTO 12
      IF (I-1.LT.1) GOTO 13
      IF (1.EQ.I-1) GOTO 20
      STOP 'ERROR-C1'
110   STOP 'ERROR-C11'
120   STOP 'ERROR-C11'
130   STOP 'ERROR-C13'
 20   IF (1.NE.I-1) GOTO 110
      IF (1.GE.I-1) GOTO 30
      STOP 'ERROR-C2'
 30   IF (1.LE.I-1) GOTO 40
      STOP 'ERROR-C3'
 40   IF (1.GT.I-1) GOTO 120
      IF (1.LT.I-1) GOTO 130
      J=2
      IF (J-1.EQ.I-1) GOTO 21
      STOP 'ERROR-D1'
111   STOP 'ERROR-D11'
121   STOP 'ERROR-D11'
131   STOP 'ERROR-D13'
 21   IF (J-1.NE.I-1) GOTO 111
      IF (J-1.GE.I-1) GOTO 31
      STOP 'ERROR-D2'
 31   IF (J-1.LE.I-1) GOTO 41
      STOP 'ERROR-D3'
 41   IF (J-1.GT.I-1) GOTO 121
      IF (J-1.LT.I-1) GOTO 131
      K=0
      IF (I-1.EQ.1) K=K+1
      IF (I-1.NE.1) STOP 'ERROR E-1'
      IF (I-1.GE.1) K=K+1
      IF (I-1.LE.1) K=K+1
      IF (I-1.GT.1) STOP 'ERROR E-2'
      IF (I-1.LT.1) STOP 'ERROR E-3'
      IF (1.EQ.I-1) K=K+1
      IF (1.NE.I-1) STOP 'ERROR E-4'
      IF (1.GE.I-1) K=K+1
      IF (1.LE.I-1) K=K+1
      IF (1.GT.I-1) STOP 'ERROR E-5'
      IF (1.LT.I-1) STOP 'ERROR E-6'
      IF (6.NE.K  ) STOP 'ERROR E-7'
      J=2
      IF (J-1.EQ.I-1) K=K+1
      IF (J-1.NE.I-1) STOP 'ERROR E-1'
      IF (J-1.GE.I-1) K=K+1
      IF (J-1.LE.I-1) K=K+1
      IF (J-1.GT.I-1) STOP 'ERROR E-2'
      IF (J-1.LT.I-1) STOP 'ERROR E-3'
      IF (K+3.NE.12 ) STOP 'ERROR E-4'
      PRINT *,'PASS'
      END
