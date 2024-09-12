       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11),I4C(11),I4D(11)
       REAL    * 4 R4A(11),R4B(11),R4C(11),R4D(11)
       REAL    * 8 R8A(11),R8B(11),R8C(11),R8D(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = I
       I4C(I) = I
       I4D(I) = I
       R4A(I) = I
       R4B(I) = I
       R4C(I) = I
       R4D(I) = I
       R8A(I) = I
       R8B(I) = I
       R8C(I) = I
       R8D(I) = I
 99   CONTINUE

      DO 1 I=2,N
        I4A(I)=I4A(I-1)*I4B(I)+I4C(I)
        I4B(I)=I4A(I)+I4C(I)
        R4A(I)=R4A(I-1)*R4B(I)+R4C(I)
        R4B(I)=R4A(I)+R4C(I)
        R8A(I)=R8A(I-1)*R8B(I)+R8C(I)
        R8B(I)=R8A(I)+R8C(I)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A,I4B ###' ,I4A,I4B
      WRITE(6,*) '### R4A,R4B ###' ,R4A,R4B
      WRITE(6,*) '### R8A,R8B ###' ,R8A,R8B

      DO 2 I=2,N
        I4A(I)=I4A(I-1)*I4B(I)+I4C(I)
        I4B(I)=I4A(I-1)+I4C(I)
        R4A(I)=R4A(I-1)*R4B(I)+R4C(I)
        R4B(I)=R4A(I-1)+R4C(I)
        R8A(I)=R8A(I-1)*R8B(I)+R8C(I)
        R8B(I)=R8A(I-1)+R8C(I)
 2    CONTINUE

      WRITE(6,*) '### LOOP 2 ###'
      WRITE(6,*) '### I4A,I4B ###' ,I4A,I4B
      WRITE(6,*) '### R4A,R4B ###' ,R4A,R4B
      WRITE(6,*) '### R8A,R8B ###' ,R8A,R8B

      DO 3 I=2,N
        I4B(I)=I4C(I-1)+I4C(I)
        I4C(I)=I4C(I-1)*I4B(I)+I4C(I)
        R4B(I)=R4C(I-1)+R4C(I)
        R4C(I)=R4C(I-1)/R4B(I)+R4C(I)
        R8B(I)=R8C(I-1)+R8C(I)
        R8C(I)=R8C(I-1)*R8C(I)+R8C(I)
 3    CONTINUE

      WRITE(6,*) '### LOOP 3 ###'
      WRITE(6,*) '### I4B,R4B,R8B ###' ,I4B,R4B,R8B
      WRITE(6,*) '### I4C,R4C,R8C ###' ,I4C,R4C,R8C

      STOP
      END
