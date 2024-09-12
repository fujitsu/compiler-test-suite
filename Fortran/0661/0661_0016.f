      LOGICAL LA
      LOGICAL LR
      DIMENSION LA(2 ),LR(19)
      LOGICAL LS
      LOGICAL LF
      DO 19067  I19067=1,19
19067 LR(I19067)=.FALSE.
      LA(1)=.TRUE.
      LS   =.TRUE.
      I=1
      IF (LF()  .AND..TRUE.) LR(  1)=.TRUE.
      IF (.TRUE..AND.LF()  ) LR(  2)=.TRUE.
      IF (LA(1) .AND..TRUE.) LR(  3)=.TRUE.
      IF (.TRUE..AND.LA(1) ) LR(  4)=.TRUE.
      IF (LF()  .AND.LF()  ) LR(  5)=.TRUE.
      IF (LA(1) .AND.LA(1) ) LR(  6)=.TRUE.
      IF (LF()  .AND.I.EQ.1) LR(  7)=.TRUE.
      IF (I.EQ.1.AND.LF()  ) LR(  8)=.TRUE.
      IF (LA(1) .AND.I.EQ.1) LR(  9)=.TRUE.
      IF (I.EQ.1.AND.LA(1) ) LR( 10)=.TRUE.
      IF (LA(I) .AND.LA(I) ) LR( 11)=.TRUE.
      IF (LA(I) .AND.I.EQ.1.AND.LA(I) .AND.I.EQ.1)LR(12)=.TRUE.
      IF (LA(I) .AND.I.EQ.1.AND.I.EQ.1.AND.LA(I) )LR(13)=.TRUE.
      IF (LA(I) .AND.I.EQ.1.AND.I.EQ.1.AND.LS    )LR(13)=.TRUE.
      IF (LF()  .AND.LS    ) LR( 14)=.TRUE.
      IF (LA(I) .AND.LS    ) LR( 15)=.TRUE.
      IF (I.EQ.1.AND.LS    ) LR( 16)=.TRUE.
      IF (LS    .AND.LF()  ) LR( 17)=.TRUE.
      IF (LS    .AND.LA(I) ) LR( 18)=.TRUE.
      IF (LS    .AND.I.EQ.1) LR( 19)=.TRUE.
      PRINT *,'PASS'
      END
      LOGICAL FUNCTION LF()
      LF=.TRUE.
      END
