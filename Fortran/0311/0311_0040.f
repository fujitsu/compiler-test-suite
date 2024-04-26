      PROGRAM MAIN

      COMMON  /BLOCKA/J
      INTEGER       I,J,ERROR/0/
      CHARACTER     CHARA01_A(10,10),CHARA01_B(10,10),CHARA01_Z(10)
      CHARACTER *10 CHARA10_A(10,10),CHARA10_B(10,10),CHARA10_Z(10)
      REAL          REAL4_A(10,10)  ,REAL4_B(10,10)  ,REAL4_Z(10)

      DATA CHARA01_A,CHARA10_A/100*'*',100*'**********'/
      DATA CHARA01_B,CHARA10_B/100*'*',100*'**********'/
      DATA CHARA01_Z,CHARA10_Z/ 10*' ', 10*'          '/
      DATA REAL4_A,REAL4_B/100*0.0,100*0.0/
      DATA REAL4_Z/10*0.0/

      I=INT(COS(0.0))*5
      J=INT(COS(0.0))
C
      CHARA01_A(1,I*2:1:-1)='A'//CHARA01_A(2,1:I*2)
      CHARA10_A(1,I*2:1:-1)=
     1             'CHARA'//CHARA10_A(1,10:1:-1)//CHARA01_A(1,:)

      REAL4_A(10,-(-J):)=REAL4_A(1,I/I:10)+1.0
C
      CALL SUB2(J,I*2,CHARA01_A,CHARA10_A)

      DO 30 INC=1,10
        CHARA01_Z(INC)  ='A'//CHARA01_B(2,INC)
  30  CONTINUE
      DO 31 INC=10,1,-1
        CHARA01_B(1,INC)=CHARA01_Z(11-INC)
  31  CONTINUE
      DO 40 INC=1,10
        CHARA10_Z(INC)  ='CHARA'//CHARA10_B(1,11-INC)//CHARA01_B(1,INC)
  40  CONTINUE
      DO 41 INC=10,1,-1
        CHARA10_B(1,INC)=CHARA10_Z(11-INC)
  41  CONTINUE

      DO 50  INC=1,10
        REAL4_Z(INC)   =REAL4_B(1,INC)+1.0
  50  CONTINUE
      DO 51  INC=1,10
        REAL4_B(10,INC)=REAL4_Z(INC)
  51  CONTINUE
C
      CALL SUB4(J,I*2,CHARA01_B,CHARA10_B)
C
 102  CONTINUE
      DO 200 INC2=1,10
        DO 201 INC1=1,10
          IF (CHARA10_A(INC1,INC2) .NE. CHARA10_B(INC1,INC2)) THEN
            ERROR=ERROR+1
            WRITE (6,998)
            WRITE (6,*) '"CHARA10_A"'
            WRITE (6,FMT='(20(1H ,5A11,/))') CHARA10_A
            WRITE (6,*) '"CHARA10_B"'
            WRITE (6,FMT='(20(1H ,5A11,/))') CHARA10_B
            GOTO 202
          END IF
 201    CONTINUE
 200  CONTINUE

 202  CONTINUE
      DO 300 INC2=1,10
        DO 301 INC1=1,10
          IF (REAL4_A(INC1,INC2) .NE. REAL4_B(INC1,INC2)) THEN
            ERROR=ERROR+1
            WRITE (6,997)
            WRITE (6,*) '"RESULT" ',REAL4_A
            WRITE (6,*) '"RIGHT"  ',REAL4_B
            GOTO 302
          END IF
 301    CONTINUE
 300  CONTINUE

 302  CONTINUE
      IF(ERROR .EQ. 0) THEN
        WRITE(6,*) 'OK'
      ELSE
        WRITE(6,*) 'NG'
      ENDIF
 993  FORMAT (1H ,'OK')
 994  FORMAT (1H ,'OK')

 997  FORMAT (1H ,'NG')
 998  FORMAT (1H ,'NG ')

      STOP
      END
C
      SUBROUTINE SUB2(X,Y,A1,A2)
        INTEGER       X,Y
        CHARACTER     A1(Y,Y)
        CHARACTER*10  A2(Y,Y)
          A2(X:Y,Y)=A1(X:Y,Y)//A1(X:Y,Y)
      END SUBROUTINE SUB2

      SUBROUTINE SUB4(X,Y,B1,B2)
        INTEGER       X,Y
        CHARACTER     B1(Y,Y)
        CHARACTER*10  B2(Y,Y)
          DO 600 INC=X,Y
            B2(INC,Y)=B1(INC,Y)//B1(INC,Y)
 600      CONTINUE
      END SUBROUTINE SUB4
