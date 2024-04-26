
      program main
      
      integer*4  N
      parameter  (N=40)
      integer*4 a(N), b(N), c(N), d(N), e(N)
      equivalence(b,a(11))
      equivalence(c,b(11))
      equivalence(d,c(11))
      integer kei, ans
      parameter (ans=122)

      d = 4
      c = 3
      b = 2
      a = 1

      a(2:N) = (a(1:N-1) + d(1:N-1)) - (b(2:N) + c(2:N))

      where (a > b)
         c = c - d
         b = b - c
      elsewhere
         d = d - c
         b = b - d
      endwhere

      e = b + a

      i = 0
      do while (i <= N/4)
         if (mod(i,2) .eq. 0) then
            where (e > 2)
               e = e + 1
            elsewhere
               e = e - 1
            endwhere
         else
            where (a >= 2)
               e = e - 1
            elsewhere
               e = e + 1
            endwhere
         endif
         i = i + 1
      enddo

      kei = sum(e)

      if (kei .eq. ans) then
         print *,"OK"
      else
         print *,"NG"
      endif
      end

