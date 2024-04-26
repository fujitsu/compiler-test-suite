      program main
      integer, parameter:: S1=1
      integer, parameter:: S2=2
      integer, parameter:: S3=3
      integer, parameter:: B1=10
      integer, parameter:: B2=11
      integer, parameter:: B3=13
      integer, parameter:: N=100
      integer, parameter:: ANS=354
      integer sm1,sm2;
      integer bg1,bg2;
      integer a(N),b(N),c(N)
      real    d(N)
      integer res

      a = 1

      a(S2:B2) = a(S1:B1) + 1

      a(S1:B1) = sum(a(S3:B3)) - 1

      sm1 = S1*cos(0.0) + S2*cos(0.0)
      bg1 = B1*cos(0.0) + B2*cos(0.0)
      a(sm1:bg1) = a(sm1:bg1) - 1

      sm1 = S1*cos(0.0) + S2*cos(0.0)
      bg1 = (B1*cos(0.0)+B2*cos(0.0)-1)*((B1*cos(0.0))/(S2*cos(0.0)))-1
      sm2 = S1*cos(0.0) * S2*cos(0.0) + S2*cos(0.0)
      bg2 = B1*cos(0.0) * B2*cos(0.0) - B1*cos(0.0)
      a(sm1:bg1) = a(sm2:bg2) + 1

      sm1 = S3*cos(0.0) + S1*cos(0.0)
      bg1 = B1*cos(0.0) * B2*cos(0.0) / (S2*cos(0.0))
      sm2 = S1*cos(0.0) * S2*cos(0.0) + S2*cos(0.0)
      bg2 = B3*cos(0.0) * (S3*cos(0.0) + 1) + S3*cos(0.0)
      a(sm1:bg1) = a(sm2:bg2) + 1

      sm1 = B3*cos(0.0) - (S1*cos(0.0) + S2*cos(0.0)) + 1
      bg1 = B2*cos(0.0) * S2*cos(0.0) - S2*cos(0.0)
      a(S1:B1) = a(sm1:bg1) + 1
      sm2 = B3*cos(0.0) * S3*cos(0.0)
      bg2 = 2 * (B2*cos(0.0) + B3*cos(0.0)) + S1*cos(0.0)
      a(sm2:bg2) = a(S3:B3) - 1

      b = (/(MOD(i,N/4)+1,i=1,N)/)
      a(b) = a(b) + 1

      c = (/(MOD(i,N/8)+1,i=1,N)/)
      a(c) = a(b) - 1

      a(b+c) = a(b+c) + 1

      a(b+c) = a(MOD(b*c,N)+1) - 1

      d = 1.0
      a(S1*2:B1*2) = a(S1*2:B1*2) + 1
      d(S1*2:B1*2) = d(S1*2:B1*2) + 1.0

      do i=1,N,5
         a(i+1:N-S1) = a(i:N-S2) + 1
         a(i:N-S2*2) = a(i+1:N-S3) - 1
      enddo

      res = 0
      do i=10,100,10
         res = res + sum(a(i-9:i))
         res = res + int(sum(d(i-9:i)))
      enddo

      if (res == ANS) then
         print *,"OK"
      else
         print *,"NG"
         print *,res
      endif

      end
