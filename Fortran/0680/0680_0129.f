       PROGRAM MAIN
       INTEGER * 4 I4A(1000),I4B(1000),I4C(1000),I4AS
       REAL    * 4 R4A(1000),R4B(1000),R4C(1000),R4AS
       REAL    * 8 R8A(1000),R8B(1000),R8C(1000),R8AS
       DATA N/999/

      I4AS = 0
      R4AS = 0
      R8AS = 0
      DO 99 I=1,N+1
       I4A(I) = 1
       I4B(I) = 1
       I4C(I) = 1
       R4A(I) = 1
       R4B(I) = 1
       R4C(I) = 1
       R8A(I) = 1
       R8B(I) = 1
       R8C(I) = 1
 99   CONTINUE

      DO 1 I=1,N
        I4A(I+1)=I4A(I)*I4B(I)+I4C(I)
        R4A(I+1)=R4A(I)*R4B(I)+I4C(I)
        R8A(I+1)=R8A(I)*R8B(I)+R8C(I)
1     CONTINUE

      WRITE(6,*) '### TEST 1 ###'
      WRITE(6,*) '### I4A,R4A,R8A  ###',I4A,R4A,R8A

      DO 3 I=1,N
        I4AS    =I4AS  *I4B(I)+I4C(I)
        R4AS    =R4AS  *R4B(I)+I4C(I)
        R8AS    =R8AS  *R8B(I)+R8C(I)
3     CONTINUE

      WRITE(6,*) '### TEST 2 ###'
      WRITE(6,*) '### I4AS,R4AS,R8AS  ###',I4AS,R4AS,R8AS

      STOP
      END
