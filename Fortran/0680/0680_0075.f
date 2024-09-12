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
       R4D(I) = I
       R4C(I) = I
       R8A(I) = I
       R8B(I) = I
       R8C(I) = I
       R8D(I) = I
 99   CONTINUE

      DO 1 I=2,N
        I4A(I)=I4A(I-1)*I4B(I)+I4C(I)
        I4C(I)=I4A(I-1)*I4B(I)
        R4A(I)=R4A(I-1)*R4B(I)+R4C(I)
        R4C(I)=R4A(I-1)*R4B(I)
        R8A(I)=R8A(I-1)*R8B(I)+R8C(I)+ABS(R8B(I))
        R8C(I)=R8A(I-1)*R8B(I)
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A ###'
      WRITE(6,101) I4A,R4A,R8A
  101 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### I4C,R4C,R8C ###'
      WRITE(6,102) I4C,R4C,R8C
  102 FORMAT(1H ,5(G20.10,1X))

      DO 2 I=2,N
        I4C(I)=I4B(I-1)*I4C(I)
        I4B(I-1)=I4C(I)+I4A(I)
        I4A(I)=I4A(I-1)*I4B(I)+I4C(I)
        R4C(I)=R4B(I-1)*R4C(I)
        R4B(I-1)=R4C(I)+R4A(I)
        R4A(I)=R4A(I-1)*R4B(I)+R4C(I)
        R8C(I)=R8B(I-1)*R8C(I)
        R8B(I-1)=R8C(I)+R8A(I)
        R8A(I)=R8A(I-1)*R8B(I)+R8C(I)
 2    CONTINUE

      WRITE(6,*) '### LOOP 2 ###'
      WRITE(6,*) '### I4A,I4B,I4C ###'
      WRITE(6,103) I4A,I4B,I4C
  103 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### R4A,R4B,R4C ###'
      WRITE(6,104) R4A,R4B,R4C
  104 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### R8A,R8B,R8C ###'
      WRITE(6,105) R8A,R8B,R8C
  105 FORMAT(1H ,5(G20.10,1X))

      DO 3 I=2,N
        I4A(I)=I4A(I-1)*I4B(I)+I4C(I)
        I4B(I)=I4B(I-1)*I4A(I)+I4C(I)
        I4C(I)=I4C(I-1)*I4B(I)+I4A(I)
        I4D(I)=I4A(I)+I4B(I)+I4C(I)
        R4A(I)=R4A(I-1)*R4B(I)+R4C(I)
        R4B(I)=R4B(I-1)/R4A(I)+R4C(I)
        R4C(I)=R4C(I-1)/R4B(I)+R4A(I)
        R4D(I)=R4A(I)+R4B(I)+R4C(I)
        R8A(I)=R8A(I-1)/R8B(I)+R8C(I)
        R8B(I)=R8B(I-1)/R8A(I)+R8C(I)
        R8C(I)=R8C(I-1)/R8B(I)+R8A(I)
        R8D(I)=R8A(I)+R8B(I)+R8C(I)
 3    CONTINUE

      WRITE(6,*) '### LOOP 3 ###'
      WRITE(6,*) '### I4A,I4B,I4C,I4D ###'
      WRITE(6,101) I4A,I4B,I4C,I4D
  106 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### R4A,R4B,R4C,R4D ###'
      WRITE(6,102) R4A,R4B,R4C,R4D
  107 FORMAT(1H ,5(G20.10,1X))
      WRITE(6,*) '### R8A,R8B,R8C,R8D ###'
      WRITE(6,103) R8A,R8B,R8C,R8D
  108 FORMAT(1H ,5(G20.10,1X))

      JJJ=1
      DO 4 I=2,N
        I4A(I) = JJJ
        I4B(I) = I
        I4C(I) = JJJ
        I4C(I)=I4C(I-1)*JJJ+JJJ
        R4A(I) = JJJ
        R4B(I) = I
        R4C(I) = JJJ
        R4C(I)=R4C(I-1)*JJJ+R4A(I)
        R8A(I) = JJJ
        R8B(I) = I
        R8C(I) = JJJ
        R8C(I)=R8C(I-1)*JJJ+JJJ
        JJJ=JJJ+1
 4    CONTINUE

      WRITE(6,*) '### LOOP 4 ###'
      WRITE(6,*) '### I4C,R4C,R8C ###'
      WRITE(6,104) I4C,R4C,R8C
  109 FORMAT(1H ,5(G20.10,1X))

      STOP
      END
