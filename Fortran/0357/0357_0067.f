      integer N
      parameter (N=50)
      real var(5:N+5,10:N+10), a(N,N), b(N,5:N+5)
      real sum, asum, bsum
      integer i, j, k, l

      var = 0.2
      a = 0.1
      b = 0.3

      a(5:N,10:N) = var(5:N,10:N)
      b(5:N,10:N) = a(5:N,10:N) + var(5:N,10:N)

      sum = 0.0
      do 10 i = 5, N+5
         a(N,i/10+1) = sum
         b(N,i) = a(N,i/10+1) - b(N,i)

         a(1:4, 1:9) = a(N,i/10+1)
         asum = 0.0
         do 20 k = 1, 4
            do 20 l = 1, 9
 20            asum = asum + a(k,l)

         b(1:4, 5:9) = a(N,i/10+1)
         b(N, N:N+5) = b(N,i)
         bsum = 0.0
         do 30 k = 1, 4
            do 30 l = 5, 9
 30            bsum = bsum + b(k,l)
         do 40 k = 1, 5
 40         bsum = bsum + b(N,N+k)

         do 10 j = 1, N
            a(N,N) = a(N,N) + (asum - bsum)
 10         sum = sum + b(j,i)
 
      write(*,*) sum

      end
