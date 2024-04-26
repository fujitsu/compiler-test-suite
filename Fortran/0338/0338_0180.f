      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/

      DO 1 I=2,9
      B(I)=A(I-1)+B(I)+C(I)
      IF(A(1).GT.1) THEN
      B(I)=A(I-1)*B(I)+C(I)
      ELSE
      B(I)=A(I-1)/B(I)-C(I)
      ENDIF
      B(I)=A(I-1)+B(I)+C(I)
 1    CONTINUE

       DO 2 J=1,10
       DO 2 I=1,10
 2     A(I)=B(I)+C(I)+I
      WRITE(6,*) A,B
      STOP
      END
