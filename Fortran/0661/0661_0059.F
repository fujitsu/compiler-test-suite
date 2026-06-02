      CALL AAAA
      CALL BBBB
      CALL CCCC
      WRITE(6,*) '*****PASS*****'
      END
      SUBROUTINE AAAA
      LOGICAL A,B
      A=538976329
      B=15
      A=(A.AND.B)
      I=A
      IF(I.NE.1.AND.I.NE.9) WRITE(6,*) 'FATAL1', I

      END
      SUBROUTINE BBBB
      LOGICAL A,B,C
      EQUIVALENCE (A,J),(B,J)
      A=1226842144
      J=15
      A=(A.AND.B)
      C=(A.AND.B)
      IF(A.NEQV.C) WRITE(6,*) 'FATAL2'

      END
      SUBROUTINE CCCC
      I=IAND(ICHAR('I'),15)
      IF(I.NE.9) WRITE(6,*) 'FATAL3'

      END
