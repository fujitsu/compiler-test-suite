       PROGRAM MAIN
       REAL    * 4 L4A(11),L4B(11),L4C(11)
       INTEGER * 4 I4A(11),I4B(11),I4C(11)
       REAL    * 4 R4A(11),R4B(11),R4C(11)
       REAL    * 8 R8A(11),R8B(11),R8C(11)
       REAL   *  8 R16A(11),R16B(11),R16C(11)
       COMPLEX * 16 C16A(11),C16B(11),C16C(11)
       COMPLEX * 16 C32A(11),C32B(11),C32C(11)
       DATA L4A/1,0,1,0,1,0,1,0,1,0,1/
       DATA L4B/0,1,0,1,0,1,0,1,0,1,0/
       DATA L4C/1,0,1,0,1,0,1,0,1,0,1/
       DATA N/10/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = I
       I4C(I) = I
       R4A(I) = I
       R4B(I) = I
       R4C(I) = I
       R8A(I) = I
       R8B(I) = I
       R8C(I) = I
       R16A(I) = I
       R16B(I) = I
       R16C(I) = I
       C16A(I) = I
       C16B(I) = I
       C16C(I) = I
       C32A(I) = I
       C32B(I) = I
       C32C(I) = I
 99   CONTINUE

      DO 1 I=1,N
        L4A(I+1) = L4A(I)*L4B(I)+L4C(I)
        I4A(I+1) = I4A(I)*I4B(I)+I4C(I)
        R4A(I+1) = R4A(I)*R4B(I)+R4C(I)
        R8A(I+1) = R8A(I)*R8B(I)+R8C(I)
        R16A(I+1) = R16A(I)*R16B(I)+R16C(I)
        C16A(I+1) = C16A(I)*C16B(I)+C16C(I)
        C32A(I+1) = C32A(I)*C32B(I)+C32C(I)
 1    CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### L * 4  ###',L4A
      WRITE(6,*) '### I * 4  ###',I4A
      WRITE(6,*) '### R * 4  ###',R4A
      WRITE(6,*) '### R * 8  ###',R8A
      WRITE(6,*) '### R * 16 ###',R16A
      WRITE(6,*) '### C * 16 ###',C16A
      WRITE(6,*) '### C * 32 ###',C32A
      STOP
      END
