      REAL A(10)/10*1/,B(10)/10*2/
      IF(A(1).EQ.B(1).OR.A(2).GT.B(2)) THEN
       WRITE(6,*) 'NG1'
      ELSE
       WRITE(6,*) 'OK'
      ENDIF
      IF(A(1)-1) 10,10,20
10    CONTINUE
       WRITE(6,*) 'OK'
      STOP
20    CONTINUE
       WRITE(6,*) 'NG2'
      STOP
      END
