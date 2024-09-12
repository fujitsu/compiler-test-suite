       I=1
       J=0
       IF ((1.,1.).EQ.I .AND. (1.,1.).EQ.I) GOTO 1
       IF ((1.,1.).NE.I .OR.  (1.,1.).EQ.I) GOTO 2
       STOP 'ERROR-1'
 2     IF ((1.,1.).EQ.I .AND. (1.,1.).EQ.I) J=1
       IF ((1.,1.).NE.I .OR.  (1.,1.).EQ.I) K=1
       IF ((1.,1.).EQ.I .AND. (1.,1.).EQ.I .AND.
     1     (1.,1.).EQ.I .AND. (1.,1.).EQ.I) GOTO 1
       IF (J.NE.0 .OR. K.NE.1) STOP 'ERROR-2'
       PRINT *,'PASS'
       STOP
  1    STOP 'ERROR'
       END
