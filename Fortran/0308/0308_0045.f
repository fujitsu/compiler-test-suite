      INTEGER*4 I04A(5),I04B(5),I04C(5),I04I,FUNE1,M(3)
      REAL*4    R04A(5)
      CHARACTER* 3 CH3A(3),CH3B(3)
      POINTER (PTR,M)
      DATA R04A/0.0,1.0,2.0,3.0,4.0/
     ,     I04B/  9,  7,  5,  3,  1/
     ,     I04C/ 11,  5,  5,  3,  1/
     ,     CH3A/'(1H','HI0',' ,5'  /
     ,     CH3B/' ,6','4B=','I2)'  /
        PTR=LOC(I04B(1))
        I04A=SIN(R04A)*3.0
        I04I=FUNE1()
        CALL SUBE1(I04B(1),M(2),I04I)
        CALL SUBI1(I04A)
        WRITE(6,*,ERR=100) 'I04A= ',I04A
C
        WRITE(6,FMT='(1H ,''I04I= '',I2,/
     .       ,''M(3)= '',I2)') I04I,M(3)
          IF((I04I .NE. 2).OR.(M(3) .NE. 5)) GOTO 200
C
        WRITE(6,FMT=CH3A//CH3B) I04B
          DO 10 I=1,5
   10       IF(I04B(I) .NE. I04C(I)) GOTO 300
C
        WRITE(6,*) 'OK'
        GOTO 400
  100   WRITE(6,*) 'NG'
        GOTO 400
  200   WRITE(6,*) 'NG'
        GOTO 400
  300   WRITE(6,*) 'NG'
        GOTO 400
  400 STOP
      END
C
        SUBROUTINE SUBI1(INI04I)
        INTEGER*4 INI04I(5),I
          DO I=1,5
            INI04I(I)=INI04I(I)*2
          ENDDO
          RETURN
          END
C
      FUNCTION FUNE1()
      INTEGER*4 FUNE1
        FUNE1=COS(0.0)*2
      RETURN
      END
C
      SUBROUTINE SUBE1(EXI04I,EXI04J,EXI04K)
      INTEGER*4 EXI04I,EXI04J,EXI04K
        EXI04I=EXI04I+2
        EXI04J=EXI04J-2
        ENX04K=EXI04K*2
      RETURN
      END
