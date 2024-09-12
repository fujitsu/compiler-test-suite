       PROGRAM MAIN
         CHARACTER*3 C
         SUM = 1.
         ISUM = 1
         DO 4 I=1,93,8
           SUM = SUM + I
           ISUM = ISUM + I
           SUM = 1 + SUM + I
           ISUM = ISUM + I + 1
           SUM = 2 + SUM + I
           ISUM = ISUM + I + 2
           SUM = 3 + SUM + I
           ISUM = ISUM + I + 3
           SUM = 4 + SUM + I
           ISUM = ISUM + I + 4
           SUM = 5 + SUM + I
           ISUM = ISUM + I + 5
           SUM = 6 + SUM + I
           ISUM = ISUM + I + 6
           SUM = 7 + SUM + I
           ISUM = ISUM + I + 7
    4      CONTINUE
         DO 5 I=97,100,1
           SUM = SUM + I
           ISUM = ISUM + I
    5      CONTINUE
         I = 1
         CALL SUB (I)
         C = 'ng '
         IF (SUM .EQ. 5051 .AND. ISUM .EQ. 5051) THEN
           C = 'ok '
         END IF
         WRITE (6, *) ' ***** '//C//'*****'
         STOP
       END
       SUBROUTINE SUB (K )
         INTEGER I, J, K
         J = 1
         DO 1 I=1,100
           IF (J .EQ. 5) GO TO 10
           J = J + 1
    1      CONTINUE
   10    CONTINUE
         IF (J .EQ. 5 .AND. K .EQ. 1) THEN
           CALL SUB2 ('ok')
         ELSE
           CALL SUB2 ('ng')
         END IF
         RETURN
       END
       SUBROUTINE SUB2 (C )
         CHARACTER*(*) C
         IF (C .EQ. 'ng') THEN
           WRITE (6, *) ' ***** ng.1 ***** '
         END IF
         I0 = 1
         I1 = 1
         I2 = 1
         I3 = 1
         I4 = 1
         I5 = 1
         I6 = 1
         I7 = 1
         I8 = 1
         I9 = 1
         I10 = 1
   10    CONTINUE
         I0 = I0 + 1
   11    CONTINUE
         I1 = I1 + 1
         IF (MOD (I0, 10) .EQ. 2) GO TO 10
   12    CONTINUE
         I2 = I2 + 1
         IF (MOD (I1, 10) .EQ. 2) GO TO 11
   13    CONTINUE
         I3 = I3 + 1
         IF (MOD (I2, 10) .EQ. 2) GO TO 12
   14    CONTINUE
         I4 = I4 + 1
         IF (MOD (I3, 10) .EQ. 2) GO TO 13
   15    CONTINUE
         I5 = I5 + 1
         IF (MOD (I4, 10) .EQ. 2) GO TO 14
   16    CONTINUE
         I6 = I6 + 1
         IF (MOD (I5, 10) .EQ. 2) GO TO 15
   17    CONTINUE
         I7 = I7 + 1
         IF (MOD (I6, 10) .EQ. 2) GO TO 16
   18    CONTINUE
         I8 = I8 + 1
         IF (MOD (I7, 10) .EQ. 2) GO TO 17
   19    CONTINUE
         I9 = I9 + 1
         IF (MOD (I8, 10) .EQ. 2) GO TO 18
   20    CONTINUE
         IF (MOD (I9, 10) .EQ. 2) GO TO 19
         I10 = I10 + 1
         IF (MOD (I10, 10) .EQ. 2) GO TO 20
         IF (I0 .NE. 3 .OR. I10 .NE. 3) THEN
           WRITE (6, *) ' ***** ng.2 ***** '
           CALL SUB3 (I7,I8)
         ELSE
           CALL SUB3 (I7,I8)
         END IF
         RETURN
       END
       SUBROUTINE SUB3 (I1, I2 )
         INTEGER I1, I2
         INTEGER II1, II2
         N = 0
         DO 1 I=1,100
           II2 = I1 + I
           DO 1 J=1,100
             II1 = II2 + J
             DO 1 K=1,100
               IF (II1 + K .EQ. 7) THEN
                 GO TO (2, 3, 4), I2
               END IF
    1          CONTINUE
         N = 1
    2    CONTINUE
         N = N + 1
    3    CONTINUE
         N = N + 1
    4    CONTINUE
         N = N + 1
         IF (I .NE. 1 .OR. J .NE. 1 .OR. K .NE. 2 .OR. N .NE. 1) THEN
           WRITE (6, *) ' ****** ng.3 ***** '
         END IF
         RETURN
       END
