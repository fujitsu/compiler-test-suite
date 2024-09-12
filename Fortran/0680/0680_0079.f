       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11),I4C(11),I4D(11)
       REAL    * 4 R4A(11),R4B(11),R4C(11),R4D(11)
       REAL    * 8 R8A(11),R8B(11),R8C(11),R8D(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = I/10
       I4C(I) = I
       I4D(I) = I/10
       R4A(I) = I
       R4B(I) = I/10
       R4C(I) = I
       R4D(I) = I/10
       R8A(I) = I
       R8B(I) = I/10
       R8C(I) = I
       R8D(I) = I/10
 99   CONTINUE

      DO 1 I=2,N
        I4A(I)=I4A(I)*I4A(I-1)+I4A(I)
        I4B(I)=I4B(I)+I4B(I)*I4B(I-1)+I4A(I)
        I4C(I)=I4A(I)+I4B(I)
        I4A(I-1)=I4A(I)*I4B(I)+I4C(I)
        I4D(I)=I4C(I)*I4D(I-1)+I4A(I)+I4B(I)
        R4A(I)=R4A(I)*R4A(I-1)+R4A(I)
        R4B(I)=R4B(I)+R4B(I)*R4B(I-1)+R4A(I)
        R4A(I-1)=R4A(I)*R4B(I)+I4C(I)
        R4C(I)=R4A(I)+R4B(I)
        R4D(I)=R4C(I)*R4D(I-1)+R4A(I)+R4B(I)
        R8A(I)=R8A(I)*R8A(I-1)+R8A(I)
        R8B(I)=R8B(I)+R8B(I)*R8B(I-1)+R8A(I)
        R8A(I-1)=R8A(I)*R8B(I)+R8C(I)
        R8C(I)=R8A(I)+R8B(I)
        R8D(I)=R8C(I)*R8D(I-1)+R8A(I)+R8B(I)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ## '
      WRITE(6,*) '### I4A,I4B,I4C,I4D ###'
      WRITE(6,101) I4A,I4B,I4C,I4D
  101 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### R4A,R4B,R4C,R4D ###'
      WRITE(6,102) R4A,R4B,R4C,R4D
  102 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### R8A,R8B,R8C,R8D ###'
      WRITE(6,103) R8A,R8B,R8C,R8D
  103 FORMAT(1H ,5(G20.10,1X))

      STOP
      END
