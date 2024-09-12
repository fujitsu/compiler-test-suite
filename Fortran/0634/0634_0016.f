      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      IP=0
      CALL F21101 (IP )
      CALL F21102 (IP )
      CALL F21103 (IP )
      CALL F21104 (IP)
      CALL F21105 (IP )
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT(21X,'= TEST =     OK'/)
   30 WRITE (6,40)
   40 FORMAT (1H ,20X,'END   RUN UNIT')
      STOP
      END
      SUBROUTINE F21101 (IP)
      DIMENSION R1099(100)
     0DATA I10
     1   / 5
     E   /
      R1099(1*I10+20)=25.0
      R1099(2*I10+20)=30.0
      R1099(3*I10+20)=35.0
      R2=25.0
      R3=30.0
      R4=35.0
     0IF(R1099(25).EQ.R2.AND.
     1   R1099(30).EQ.R3.AND.
     E   R1099(35).EQ.R4) GO TO 30
      IP=IP+1
      WRITE(6,10)
   100FORMAT(1H0,20X,
     1   '==TEST==',3X,'NG',5X,
     E   '===================================')
      GO TO 30
   20 RETURN
   30 GO TO 20
      E                            N                                   D
      SUBROUTINE F21102 (IP )
     0DIMENSION
     1   R2050
     E   (50)
     0DATA I20 /4 /,
     1   LNO /2/
      R2050(6*I20-10) =14.0
      R2050(7*I20-10) =18.0
     0R2050(8*I20-10)
     E   =22.0
     0IF(R2050(14).EQ.14.0.AND.
     1   R2050(18).EQ.18.0
     1   .AND.
     E   R2050(24).EQ.24.0)  LNO=LNO+1
      LNO=LNO+1
      GO  TO 40
   10 IP=IP+1
      WRITE (6,20)
   200FORMAT(1H0,20X,'==TEST=='
     1   3X,'NG',5X
     E   '=========================')
   30 RETURN
   40 IF(LNO-1) 10,10,30
                                                                    END
      SUBROUTINE F21103 (IP)
      DIMENSION
     1   R3050(50)
      DATA I30
     E   / 8 /, LNO1 / 0 /
     0R3050(4*I30) =32.0
      R3050(5*I30) =40.0
     0R3050(6*I30) =48.0
     0IF(R3050(32).EQ.32.0.AND.
     E   R3050(40).EQ.40.0.AND.
     E   R3050(48).EQ.48.0 )  GO TO 40
       GO TO 50
   10 IP=IP+1
      WRITE(6,20)
   20 FORMAT(1H0,20X,'==TEST==',
     E   3X,'NG',5X,
     1  '=================================')
   30    RETURN
   40 LNO1=LNO1+1
   50 LNO1=LNO1+1
      GO TO (10,30),LNO1
      E                                      ND
      SUBROUTINE F21104 (IP)
     0   D
     1   I
     2   M
     3   E
     4   N
     5   S
     6   I
     7   O
     8   N
     9
     1   R
     2   4
     3   0
     4   5
     5   0
     6
     7   (
     8   5
     9   0
     1   )
     0DATA I40 /25 /
      R4050(I40-5) =20.0
      R4050(I40-10)=15.0
      R4050(I40-15)=10.0
      IF(R4050(20).EQ.20.0.AND.
     1   R4050(15).EQ.15.0.AND.
     1   R4050(10).EQ.10.0) GO TO 40
      GO TO  50
   10 IP=IP+1
      WRITE(6,20)
   20 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,
     1   '==================================')
   30 RETURN
   40 ASSIGN 30 TO LINE
      GO TO 60
   50 ASSIGN 10 TO LINE
   60 GO TO LINE, ( 10,30)
                              END
      SUBROUTINE F21105 (IP)
      DIMENSION  I5050(50)
      DO 10  I50=1,10
     0   I
     1   5
     2   0
     3   5
     4   0
     5   (
     6   I
     7   5
     8   0
     1   +
     2   4
     3   0
     4   )
     5   =
     6   I5
     7   0
     8   +
     9   4
     1   0
   10 CONTINUE
      DO 20 I51=41,50
      IF(I5050(I51).EQ.I51) GO TO 40
      IP=IP+1
      WRITE(6,30)
   30 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'=========================')
   20 CONTINUE
   40 RETURN
                        E               N              D
