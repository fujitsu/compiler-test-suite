      PROGRAM MAIN
      INTEGER KEY(1000),NEWKEY(1000)
      DO 100 I = 1,1000
  100   KEY(I) = I
      CALL SORT( KEY,NEWKEY,1000 )
      PRINT*,NEWKEY
      END

      SUBROUTINE SORT( KEY,NEWKEY,KEYMAX )
      INTEGER    KEY( KEYMAX ),NEWKEY( KEYMAX )
      LOGICAL    USED( 1000 )

      IF( KEYMAX.GT.1000 )  STOP 999
      DO 100 I = 1,KEYMAX
  100   USED(I) = .TRUE.

      MINVAL = KEY(1)
      MINIDX = 1
      DO 200 I = 1,KEYMAX
        IF( KEY(I).LT.MINVAL )  THEN
          MINVAL = KEY(I)
          MINIDX = I
        ENDIF
  200 CONTINUE

      DO 300 I = 1,KEYMAX
        VAL = MINVAL
        IDX = MINIDX
        DO 310 J = 1,KEYMAX
          IF( USED(J) ) THEN
            IF( KEY(J).GT.VAL ) THEN
              VAL = KEY(J)
              IDX = J
            ENDIF
          ENDIF
  310   CONTINUE
        NEWKEY(I) = KEY(IDX)
        USED(IDX) = .FALSE.
  300 CONTINUE

      END
