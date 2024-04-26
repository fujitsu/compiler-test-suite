      PROGRAM MAIN
        INTEGER*4 V_A,V_B,IFUN,ERROR/1/
        DIMENSION V_A(10),V_B(10)
        DATA V_A,V_B/0,1,2,3,4,5,6,7,8,9,9,8,7,6,5,4,3,2,1,0/

          WRITE(1,100) V_A,V_B,V_A+V_B
          V_A=V_A+1
          V_B=V_B-1
          WRITE(2,200) IFUN(V_A+V_B)
          WRITE(3,100,ERR=10) V_A,V_B,V_A+V_B
          V_A=1
          V_B=2
          WRITE(4,100,ERR=10) V_A,V_B,V_A+V_B
          ERROR=0
          CALL CHECK(ERROR)

  10      IF(ERROR .EQ. 0) THEN
             WRITE(6,*) 'OK'
          ELSE
             WRITE(6,*) 'NG'
          ENDIF

 100      FORMAT(1H ,'A   =(',10I3,')'/,1H ,'B   =(',10I3,')'/
     +           1H ,'A+B =(',10I3,')')
 200      FORMAT(1H ,'IFUN='I3)
          STOP
      END PROGRAM MAIN
C
C
      INTEGER*4 FUNCTION IFUN(A)
        INTEGER*4 I,A(10)
C
          IFUN=0
          DO I=1,10,1
            IFUN=IFUN+A(I)
          END DO
          IFUN=IFUN/10
C
          RETURN
      END FUNCTION IFUN
C
C
      SUBROUTINE CHECK(ERROR)
      INTEGER*4 ERROR
      CHARACTER*40 CH40_A,CH40_B,CH40_AB,RSLT(3,4)
      DATA RSLT/' A   =(  0  1  2  3  4  5  6  7  8  9)'
     +         ,' B   =(  9  8  7  6  5  4  3  2  1  0)'
     +         ,' A+B =(  9  9  9  9  9  9  9  9  9  9)'
     +         ,' IFUN=  9'
     +         ,''
     +         ,''
     +         ,' A   =(  1  2  3  4  5  6  7  8  9 10)'
     +         ,' B   =(  8  7  6  5  4  3  2  1  0 -1)'
     +         ,' A+B =(  9  9  9  9  9  9  9  9  9  9)'
     +         ,' A   =(  1  1  1  1  1  1  1  1  1  1)'
     +         ,' B   =(  2  2  2  2  2  2  2  2  2  2)'
     +         ,' A+B =(  3  3  3  3  3  3  3  3  3  3)'/

      DO I=1,4
         REWIND I
         READ(I,'(A)',ERR=20) CH40_A
         if(I .NE. 2) THEN
            READ(I,'(A)',ERR=20) CH40_B
            READ(I,'(A)',ERR=20) CH40_AB
         ELSE
            CH40_B =''
            CH40_AB=''
         ENDIF
         IF(CH40_A  /= RSLT(1,I) .OR. CH40_B  /= RSLT(2,I) .OR.
     +      CH40_AB /= RSLT(3,I)) THEN
            WRITE(6,FMT='(1H ,"TRUE VALUE:"/,3(A/))') (RSLT(J,I),J=1,3)
            WRITE(6,FMT='(1H ,"CALC VALUE:"/,3(A/))')
     +           CH40_A,CH40_B,CH40_AB
            ERROR=ERROR+1
         ENDIF
      ENDDO
      GOTO 30
  20  ERROR=1
  30  RETURN
      END

         
