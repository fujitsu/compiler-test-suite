      REAL A(10)/10*1/,B(10)/10*2/

      DO 1 I=1,10
       Y=A(1)+2
1      B(I)=A(1)+SIN(Y*2)

      DO 2 I=1,10
       Y=A(1)+2
2      B(I)=A(I)/SIN(Y*2)

      DO 3 I=1,10
       IF(A(2).EQ.1) GOTO 3
       Y=A(1)+2
       B(I)=A(1)+SIN(Y*2)
3     CONTINUE

      DO 4 I=1,10
       IF(A(2).EQ.2) GOTO 4
       Y=A(1)+2
       B(I)=A(I)/SIN(Y*2)
4     CONTINUE
       WRITE(6,*)A,B
      STOP
      END
