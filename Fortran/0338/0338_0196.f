      REAL A(10)/10*1/,B(10)/10*2/,C(10,10)/100*3/

      DO 1 J=1,2
       DO 1 I=1,10
 1      A(I)=B(I)

      DO 2 J=1,2
       DO 2 I=1,10
 2      A(I)=A(I)

      DO 3 J=1,2
       DO 3 I=1,10
 3      A(I)=A(I)+C(I,J)

      DO 4 J=1,2
       DO 4 I=1,10
        B(I)=B(I)+1
 4      B(I)=B(I)
       WRITE(6,*) A,B
      STOP
      END
