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
        CALL SUB1(I4A(I))
        R4A(I)=R4A(I-1)*R4B(I)+R4C(I)
        CALL SUB2(R4A(I))
        R8A(I)=R8A(I-1)*R8B(I)+R8C(I)
        CALL SUB3(R8A(I))
 1    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A ###' ,I4A,R4A,R8A

      DO 2 I=2,N
        CALL SUB1(I4B(I))
        I4B(I)=I4B(I-1)*I4B(I)+I4C(I)
        CALL SUB2(R4B(I))
        R4B(I)=R4B(I-1)*R4B(I)+R4C(I)
        CALL SUB3(R8B(I))
        R8B(I)=R8B(I-1)*R8B(I)+R8C(I)
 2    CONTINUE

      WRITE(6,*) '### LOOP 1 ###'
      WRITE(6,*) '### I4B,R4B,R8B ###' ,I4B,R4B,R8B

      STOP
      END

      SUBROUTINE SUB1(ZZ)
      INTEGER * 4 ZZ
      ZZ = 1
      RETURN
      END
      SUBROUTINE SUB2(ZZ)
      REAL * 4 ZZ
      ZZ = 1
      RETURN
      END
      SUBROUTINE SUB3(ZZ)
      REAL * 8 ZZ
      ZZ = 1
      RETURN
      END
