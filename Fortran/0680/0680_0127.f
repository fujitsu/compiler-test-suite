       PROGRAM MAIN
       INTEGER * 4 I4A(11),I4B(11),I4C(11),I4S
       REAL    * 4 R4A(11),R4B(11),R4C(11),R4S
       REAL    * 8 R8A(11),R8B(11),R8C(11),R8S
       DATA I4S,R4S,R8S/0,0,0/
       DATA N/10/
       DATA M/11/

      DO 99 I=1,N+1
       I4A(I) = I
       I4B(I) = 1
       I4C(I) = I
       R4A(I) = I
       R4B(I) = I
       R4C(I) = I
       R8A(I) = I
       R8B(I) = I
       R8C(I) = I
 99   CONTINUE

      CALL SUB(M,I4A ,I4B ,I4C ,
     +           R4A ,R4B ,R4C ,
     +           R8A ,R8B ,R8C ,
     +           I4S ,R4S ,R8S ,N )

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A    ###',I4A
      WRITE(6,*) '### R4A    ###',R4A
      WRITE(6,*) '### R8A    ###',R8A
      WRITE(6,*) '### I4S    ###',I4S
      WRITE(6,*) '### R4S    ###',R4S
      WRITE(6,*) '### R8S    ###',R8S

      STOP
      END
      SUBROUTINE SUB(M,I4A,I4B,I4C,R4A,R4B,R4C,R8A,R8B,R8C,I4S,R4S,R8S,
     +               N)
       INTEGER * 4 I4A(M),I4B(M),I4C(M),I4S
       REAL    * 4 R4A(M),R4B(M),R4C(M),R4S
       REAL    * 8 R8A(M),R8B(M),R8C(M),R8S
       INTEGER * 4 N
      DO 1 I=1,N
        I4A(I+1) = I4A(I)*I4B(I)+I4C(I)
        R4A(I+1) = R4A(I)*R4B(I)+R4C(I)
        R8A(I+1) = R8A(I)*R8B(I)+R8C(I)
 1    CONTINUE

      DO 2 I=1,N
        I4S = I4S*I4B(I)+I4C(I)
        R4S = R4S*R4B(I)+R4C(I)
        R8S = R8S*R8B(I)+R8C(I)
 2    CONTINUE

      RETURN
      END
