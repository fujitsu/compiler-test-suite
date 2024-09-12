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
        I4A(I)=(I4A(I-1)*I4B(I)+I4C(I))+I4A(I-1)/I4A(I-1)
        R4A(I)=(R4A(I-1)*R4B(I)+R4C(I))+R4A(I-1)/R4A(I-1)
        R8A(I)=(R8A(I-1)*R8B(I)+R8C(I))+R8A(I-1)/R8A(I-1)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A R4A R8A ###'
      WRITE(6,101) I4A,R4A,R8A
  101 FORMAT(1H ,5(G20.10,1X))

      DO 2 I=2,N
        I4B(I)=I4B(I-1)*I4B(I)+I4C(I)
        CALL SUB1(I4B(I))
        R4B(I)=R4B(I-1)*R4B(I)+R4C(I)
        CALL SUB2(R4B(I))
        R8B(I)=R8B(I-1)*R8B(I)+R8C(I)
        CALL SUB3(R8B(I))
 2    CONTINUE

      WRITE(6,*) '### LOOP 2 ###'
      WRITE(6,*) '### I4B R4B R8B ###'
      WRITE(6,102) I4B,R4B,R8B
  102 FORMAT(1H ,5G20.10,1X)

      DO 3 I=2,N
        I4B(I)=I4B(I-1)*I4B(I)+I4C(I)
        I4C(I)=ABS(I4B(I))
        R4B(I)=R4B(I-1)*R4B(I)+R4C(I)
        R4C(I)=MAX(R4C(I),R4B(I))
        R8B(I)=R8B(I-1)*R8B(I)+R8C(I)
        R8C(I)=MAX(R8C(I),R8B(I))
 3    CONTINUE

      WRITE(6,*) '### LOOP 3 ###'
      WRITE(6,*) '### I4B R4B R8B ###'
      WRITE(6,103) I4B,R4B,R8B
  103 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### I4C R4C R8C ###'
      WRITE(6,104) I4C,R4C,R8C
  104 FORMAT(1H ,5(G20.10,1X))

      DO 4 I=2,N
        I4B(I)=I4B(I-1)*I4B(I)+I4C(I)
        I4B(I)=I4A(I)+I4C(I)
        R4B(I)=R4B(I-1)*R4B(I)+R4C(I)
        R4B(I)=R4A(I)+R4C(I)
        R8B(I)=R8B(I-1)*R8B(I)+R8C(I)
        R8B(I)=R8A(I)+R8C(I)
 4    CONTINUE

      WRITE(6,*) '### LOOP 4 ###'
      WRITE(6,*) '### I4B R4B R8B ###'
      WRITE(6,105) I4B,R4B,R8B
  105 FORMAT(1H ,5(G20.10,1X))

      DO 5 I=2,N
        I4C(I)=I4A(I)+I4C(I)
        I4C(I)=I4C(I-1)*I4B(I)+I4C(I)
        R4C(I)=R4A(I)+R4C(I)
        R4C(I)=R4C(I-1)*R4B(I)+R4C(I)
        R8C(I)=R8A(I)+R8C(I)
        R8C(I)=R8C(I-1)*R8B(I)+R8C(I)
 5    CONTINUE

      WRITE(6,*) '### LOOP 5 ###'
      WRITE(6,*) '### I4C R4C R8C ###'
      WRITE(6,106) I4C,R4C,R8C
  106 FORMAT(1H ,5(G20.10,1X))

      STOP
      END
      SUBROUTINE SUB1(A)
      INTEGER * 4 A
      A= 1
      RETURN
      END
      SUBROUTINE SUB2(A)
      REAL * 4    A
      A= 1
      RETURN
      END
      SUBROUTINE SUB3(A)
      REAL * 8    A
      A= 1
      RETURN
      END
