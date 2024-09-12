       PROGRAM MAIN
       INTEGER * 4 I4A1(11),I4B1(11),I4C1(11),I4D(11)
       INTEGER * 4 I4A2(11),I4B2(11),I4C2(11)
       INTEGER * 4 I4A3(11),I4B3(11),I4C3(11)
       INTEGER * 4 I4A4(11),I4B4(11),I4C4(11)
       INTEGER * 4 I4A5(11),I4B5(11),I4C5(11)
       REAL    * 4 R4A1(11),R4B1(11),R4C1(11),R4D(11)
       REAL    * 4 R4A2(11),R4B2(11),R4C2(11)
       REAL    * 4 R4A3(11),R4B3(11),R4C3(11)
       REAL    * 4 R4A4(11),R4B4(11),R4C4(11)
       REAL    * 4 R4A5(11),R4B5(11),R4C5(11)
       REAL    * 8 R8A1(11),R8B1(11),R8C1(11),R8D(11)
       REAL    * 8 R8A2(11),R8B2(11),R8C2(11)
       REAL    * 8 R8A3(11),R8B3(11),R8C3(11)
       REAL    * 8 R8A4(11),R8B4(11),R8C4(11)
       REAL    * 8 R8A5(11),R8B5(11),R8C5(11)
       DATA N/10/

      DO 99 I=1,N+1
       I4A1(I) = I
       I4A2(I) = I
       I4A3(I) = I
       I4A4(I) = I
       I4A5(I) = I
       I4B1(I) = 2
       I4B2(I) = 2
       I4B3(I) = 2
       I4B4(I) = 2
       I4B5(I) = 2
       I4C1(I) = I4B1(I)+1
       I4C2(I) = I4B2(I)+1
       I4C3(I) = I4B3(I)+1
       I4C4(I) = I4B4(I)+1
       I4C5(I) = I4B5(I)+1
       R4A1(I) = I
       R4A2(I) = I
       R4A3(I) = I
       R4A4(I) = I
       R4A5(I) = I
       R4B1(I) = 2.
       R4B2(I) = 2.
       R4B3(I) = 2.
       R4B4(I) = 2.
       R4B5(I) = 2.
       R4C1(I) = R4B1(I)+1
       R4C2(I) = R4B2(I)+1
       R4C3(I) = R4B3(I)+1
       R4C4(I) = R4B4(I)+1
       R4C5(I) = R4B5(I)+1
       R8A1(I) = I
       R8A2(I) = I
       R8A3(I) = I
       R8A4(I) = I
       R8A5(I) = I
       R8B1(I) = 2.
       R8B2(I) = 2.
       R8B3(I) = 2.
       R8B4(I) = 2.
       R8B5(I) = 2.
       R8C1(I) = R8B1(I)+1
       R8C2(I) = R8B2(I)+1
       R8C3(I) = R8B3(I)+1
       R8C4(I) = R8B4(I)+1
       R8C5(I) = R8B5(I)+1
       I4D(I)=0
       R4D(I)=0
       R8D(I)=0
 99   CONTINUE

      DO 1 I=1,N
        I4A1(I+1) = I4A1(I) * I4B1(I) + I4C1(I)
        I4A2(I+1) = I4A2(I) * I4B2(I) + I4C2(I)
        I4A3(I+1) = I4A3(I) * I4B3(I) + I4C3(I)
        I4A4(I+1) = I4A4(I) * I4B4(I) + I4C4(I)
        I4A5(I+1) = I4A5(I) * I4B5(I) + I4C5(I)
        I4D(I)=I4A1(I)+I4A2(I)+I4A3(I)+I4A4(I)+I4A5(I)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### ARRAY   ##',I4A1,I4A2,I4A3,I4A4,I4A5,I4D

      DO 2 I=1,N
        R4A1(I+1) = R4A1(I) * R4B1(I) + R4C1(I)
        R4A2(I+1) = R4A2(I) * R4B2(I) + R4C2(I)
        R4A3(I+1) = R4A3(I) * R4B3(I) + R4C3(I)
        R4A4(I+1) = R4A4(I) * R4B4(I) + R4C4(I)
        R4A5(I+1) = R4A5(I) * R4B5(I) + R4C5(I)
        R4D(I)=R4A1(I+1)+R4A2(I)+R4A3(I)+R4A4(I)+R4A5(I)
 2    CONTINUE

      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### ARRAY  ###' ,R4A1,R4A2,R4A3,R4A4,R4A5,R4D

      DO 3 I=1,N
        R8A1(I+1) = R8A1(I) * R8B1(I) + R8C1(I)
        R8A2(I+1) = R8A2(I) * R8B2(I) + R8C2(I)
        R8A3(I+1) = R8A3(I) * R8B3(I) + R8C3(I)
        R8A4(I+1) = R8A4(I) * R8B4(I) + R8C4(I)
        R8A5(I+1) = R8A5(I) * R8B5(I) + R8C5(I)
        R8D(I)=R8A1(I)+R8A2(I)+R8A3(I)+R8A4(I)+R8A5(I)
 3    CONTINUE

      WRITE(6,*) '### TEST 3 ###'
      WRITE(6,*) '### ARRAY  ###' ,R8A1,R8A2,R8A3,R8A4,R8A5,R8D

      STOP
      END
