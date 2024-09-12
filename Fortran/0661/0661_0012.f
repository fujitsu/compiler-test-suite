      IMPLICIT COMPLEX(C)
      C=(1.,1.)
      I=1
      J=1
      IF (I+1.EQ.2 .AND . I+1.EQ.I+1 .AND . I.EQ.1) J=J+2**1
      IF (I+1.EQ.2 .OR  . I+1.EQ.I+1 .OR  . I.EQ.1) J=J+2**2
      IF (I+1.EQ.2 .EQV . I+1.EQ.I+1 .EQV . I.EQ.1) J=J+2**3
      IF (I+1.EQ.3 .NEQV. I+1.EQ.I+1 .NEQV. I.EQ.5) J=J+2**4
      IF (I+1.EQ.2 .AND . I+1.EQ.I+1 .AND . I.EQ.1) GOTO 1
      STOP 'ERROR-1'
1     IF (I+1.EQ.2 .OR  . I+1.EQ.I+1 .OR  . I.EQ.1) GOTO 2
      STOP 'ERROR-2'
2     IF (I+1.EQ.2 .EQV . I+1.EQ.I+1 .EQV . I.EQ.1) GOTO 3
      STOP 'ERROR-3'
3     IF (I+1.EQ.3 .NEQV. I+1.EQ.I+1 .NEQV. I.EQ.5) GOTO 4
      STOP 'ERROR-4'
4     IF (.NOT.I+1.EQ.1) J=J+2**5
      IF (.NOT.I+1.NE.2) J=J+2**6
      IF (.NOT.C+(1.0,1.0).EQ.(1.,1.)) J=J+2**7
      IF (.NOT.C+(1.0,1.0).NE.(2.,2.)) J=J+2**8
      IF (J.NE.511 ) STOP 'ERROR'
      PRINT *,'PASS'
      END
