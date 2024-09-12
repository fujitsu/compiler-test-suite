          REAL*4 R1A(  32),R1B(  32)
          REAL*4 R2A(  64),R2B(  64)
          REAL*4 R3A( 200),R3B( 200)
          REAL*4 R4A( 256),R4B( 256)
          REAL*4 R5A( 512),R5B( 512)
          REAL*4 R6A(1024),R6B(1024)
          CALL SUB(  32,R1A,R1B)
          CALL SUB(  64,R2A,R2B)
          CALL SUB( 200,R3A,R3B)
          CALL SUB( 256,R4A,R4B)
          CALL SUB( 512,R5A,R5B)
          CALL SUB(1024,R6A,R6B)
          DO 10 J = 1,10
           DO 11 I = 1,200,2
             R3A(I) = R3B(I)*2.0
   11      CONTINUE
           DO 12 I = 1,512
             R5A(I) = 2.0
   12      CONTINUE
           DO 13 I= 1,64
             R2A(I) = R2B(I)*R6B(1024)
   13      CONTINUE
           DO 14 I= 1,1023
             R6A(I) = R6B(I)+R6B(1023)*R6B(1024)
   14      CONTINUE
           DO 15 I = 1,32,2
             R1A(I) = R1B(I)
   15      CONTINUE
   10     CONTINUE
          WRITE(6,*) R1A,R1B,R2A,R2B,R3A,R3B,
     *               R4A,R4B,R5A,R5B,R6A,R6B
          STOP
          END
          SUBROUTINE SUB(N,A,B)
          REAL*4 A(N),B(N)
          DO 10 J= 1,10
          DO 10 I= 1,N
            A(I) = I
   10       B(I) = I+J
          RETURN
          END
