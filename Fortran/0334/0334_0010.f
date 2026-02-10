      integer N
      parameter (N=50)
      real var(5:N+5,10:N+10), a(N,N), b(N,5:N+5)
      real kei, asum, bsum, ans, tkei
      parameter (ans=3.84017149E+17)

      var = 0.2
      a = 0.1
      b = 0.3

      a(5:N,10:N) = var(5:N,10:N)
      b(5:N,10:N) = a(5:N,10:N) + var(5:N,10:N)

      kei = real(0)
      do i = 5, N+5
         a(N,int(i/10)+1) = kei
         b(N,i) = a(N,int(i/10)+1) - b(N,i)

         a(1:4, 1:9) = a(N,int(i/10)+1)

         asum = sum(a(1:4,1:9))

         b(1:4, 5:9) = a(N,int(i/10)+1)
         b(N, N:N+5) = b(N,i)

         bsum = sum(b(1:4,5:9))
         bsum = bsum + sum(b(N,N+1:N+5))

         do j = 1, N
            a(N,N) = a(N,N) + (asum - bsum)
         enddo

         tkei = sum(b(1:N,i))
         kei = kei + tkei
      enddo

      if (abs(kei-ans) .le. 1.0E+12) then
         write(*,*) 'OK'
      else
	 print *,kei,ans,abs(kei-ans)
         write(*,*) 'NG'
      endif

      end
