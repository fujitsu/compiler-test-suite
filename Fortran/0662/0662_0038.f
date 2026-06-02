      CALL S1
      CALL S2
      CALL S3
      PRINT *,'PASS'
      END
      SUBROUTINE S1
      IMPLICIT INTEGER*2 (A),INTEGER*4(B),REAL*4(C),REAL*8(D),
     1         REAL*16(E),
     1         COMPLEX*8 (F),COMPLEX*16(G),COMPLEX*32(H),
     1         LOGICAL*1 (I),LOGICAL*4(J),
     1         CHARACTER*(32)(Z)
      DIMENSION AE(32/2),BE(32/4),CE(32/4),DE(32/8),EE(32/16),
     1          FE(32/8),GE(32/16),HE(32/32),IE(32/1),JE(32/4)
      EQUIVALENCE (AE,Z21),(BE,Z41),(CE,Z42),(DE,Z81),(EE,ZH1),
     1            (FE,Z82),(GE,ZH2),(HE,ZX1),(IE,Z11),(JE,Z43)
      COMMON /CAE/ Z21
      COMMON /CBE/ Z41
      COMMON /CCE/ Z42
      COMMON /CDE/ Z81
      COMMON /CEE/ ZH1
      COMMON /CFE/ Z82
      COMMON /CGE/ ZH2
      COMMON /CHE/ ZX1
      COMMON /CIE/ Z11
      COMMON /CJE/ Z43
      DO 101 K=1,32/2
101      AE(K)=K
      DO 102 K=1,32/4
102      BE(K)=K
      DO 103 K=1,32/4
103      CE(K)=K
      DO 104 K=1,32/8
104      DE(K)=K
      DO 105 K=1,32/16
105      EE(K)=K
      DO 106 K=1,32/8
106      FE(K)=CMPLX(K,K)
      DO 107 K=1,32/16
107      GE(K)=CMPLX(K,K)
      DO 108 K=1,32/32
108      HE(K)=CMPLX(K,K)
      DO 109 K=1,32/1
109      IE(K)=.TRUE.
      DO 110 K=1,32/4
110      JE(K)=.TRUE.
      END
      SUBROUTINE S2
      IMPLICIT INTEGER*2 (A),INTEGER*4(B),REAL*4(C),REAL*8(D),
     1         REAL*16(E),
     1         COMPLEX*8 (F),COMPLEX*16(G),COMPLEX*32(H),
     1         LOGICAL*1 (I),LOGICAL*4(J),
     1         CHARACTER*(32)(Z)
      DIMENSION AE(32/2),BE(32/4),CE(32/4),DE(32/8),EE(32/16),
     1          FE(32/8),GE(32/16),HE(32/32),IE(32/1),JE(32/4)
      EQUIVALENCE (AE,Z21),(BE,Z41),(CE,Z42),(DE,Z81),(EE,ZH1),
     1            (FE,Z82),(GE,ZH2),(HE,ZX1),(IE,Z11),(JE,Z43)
      COMMON /CAE/ Z21
      COMMON /CBE/ Z41
      COMMON /CCE/ Z42
      COMMON /CDE/ Z81
      COMMON /CEE/ ZH1
      COMMON /CFE/ Z82
      COMMON /CGE/ ZH2
      COMMON /CHE/ ZX1
      COMMON /CIE/ Z11
      COMMON /CJE/ Z43
      DO 101 K=1,32/2
101      IF (AE(K).NE.K)PRINT *,'FAIL'
      DO 102 K=1,32/4
102      IF (BE(K).NE.K             )PRINT *,'FAIL'
      DO 103 K=1,32/4
103      IF (CE(K).NE.K             )PRINT *,'FAIL'
      DO 104 K=1,32/8
104      IF (DE(K).NE.K             )PRINT *,'FAIL'
      DO 105 K=1,32/16
105      IF (EE(K).NE.K             )PRINT *,'FAIL'
      DO 106 K=1,32/8
106      IF (FE(K).NE.CMPLX(K,K)    )PRINT *,'FAIL'
      DO 107 K=1,32/16
107      IF (GE(K).NE.CMPLX(K,K)    )PRINT *,'FAIL'
      DO 108 K=1,32/32
108      IF (HE(K).NE.CMPLX(K,K)    )PRINT *,'FAIL'
      DO 109 K=1,32/1
109      IF (IE(K).NEQV..TRUE.        )PRINT *,'FAIL'
      DO 110 K=1,32/4
110      IF (JE(K).NEQV..TRUE.         )PRINT *,'FAIL'
      END
      SUBROUTINE S3
      IMPLICIT INTEGER*2 (A),INTEGER*4(B),REAL*4(C),REAL*8(D),
     1         REAL*16(E),
     1         COMPLEX*8 (F),COMPLEX*16(G),COMPLEX*32(H),
     1         LOGICAL*1 (I),LOGICAL*4(J),
     1         CHARACTER*(32)(Z)
      DIMENSION AE(32/2),BE(32/4),CE(32/4),DE(32/8),EE(32/16),
     1          FE(32/8),GE(32/16),HE(32/32),IE(32/1),JE(32/4)
      EQUIVALENCE (AE,Z21),(BE,Z41),(CE,Z42),(DE,Z81),(EE,ZH1),
     1            (FE,Z82),(GE,ZH2),(HE,ZX1),(IE,Z11),(JE,Z43)
      COMMON /CAE/ AE
      COMMON /CBE/ BE
      COMMON /CCE/ CE
      COMMON /CDE/ DE
      COMMON /CEE/ EE
      COMMON /CFE/ FE
      COMMON /CGE/ GE
      COMMON /CHE/ HE
      COMMON /CIE/ IE
      COMMON /CJE/ JE
      DO 101 K=1,32/2
101      IF (AE(K).NE.K)PRINT *,'FAIL'
      DO 102 K=1,32/4
102      IF (BE(K).NE.K             )PRINT *,'FAIL'
      DO 103 K=1,32/4
103      IF (CE(K).NE.K             )PRINT *,'FAIL'
      DO 104 K=1,32/8
104      IF (DE(K).NE.K             )PRINT *,'FAIL'
      DO 105 K=1,32/16
105      IF (EE(K).NE.K             )PRINT *,'FAIL'
      DO 106 K=1,32/8
106      IF (FE(K).NE.CMPLX(K,K)    )PRINT *,'FAIL'
      DO 107 K=1,32/16
107      IF (GE(K).NE.CMPLX(K,K)    )PRINT *,'FAIL'
      DO 108 K=1,32/32
108      IF (HE(K).NE.CMPLX(K,K)    )PRINT *,'FAIL'
      DO 109 K=1,32/1
109      IF (IE(K).NEQV..TRUE.        )PRINT *,'FAIL'
      DO 110 K=1,32/4
110      IF (JE(K).NEQV..TRUE.         )PRINT *,'FAIL'
      END
