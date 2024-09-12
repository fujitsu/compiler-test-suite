      REAL,dimension(10)::A
      A=10.0
      CALL SUB(INT(A))
      WRITE(*,*) '*****PASS*****'
      end
      SUBROUTINE SUB(X)
      INTEGER,dimension(10)::X
      INTEGER A
      DO 10 A=1,10
      IF(X(A).EQ.INT(10)) THEN
      ELSE
      WRITE(*,*) 'NG'
      ENDIF
   10 CONTINUE
      END
