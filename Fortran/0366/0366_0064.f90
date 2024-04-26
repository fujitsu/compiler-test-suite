      SUBROUTINE SUB(R1A,R1B,N)
      REAL R1A(N),R1B(N)

      K1=INT(COS(0.0))
      K=20
      DO 10 I=1,20
         R1A(K) = R1B(I+1) - R1A(K+2)
         K=K-K1
   10 CONTINUE
      RETURN
      END
!
      REAL R1A(100),R1B(100)
      R1A = 0
      R1B = 0
      call sub(r1a,r1b,100)
      print *,all(r1a==0)
      end 
