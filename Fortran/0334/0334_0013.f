
      volatile kei
      integer kei
      integer N
      parameter (N=10)
      integer a(N)
      integer b(N)
      integer ans
      parameter (ans=160676)

      a = 1
      do i=1,N
         b(i) = N - i + 1
      enddo

      if ((maxval(a(1:N-1)).eq.1).and.(minval(a(2:N)).eq.1)) then
         kei = product(a(2:N-3)) + product(a(b(1:N-2))) + sum(b(2:N))
         do i=1,N
            kei = i * kei / 2
         enddo
      else
         kei = 0
      endif

      if ((maxval(b(1:N-1)).eq.N).and.(minval(b(2:N)).eq.1)) then
         kei = kei + dot_product(a(2:N-2),b(3:N-1))
         do i=2,N
            kei = kei - (b(i-1) - b(i))
         enddo
      else
         kei = kei**2
      endif

      if (kei.eq.ans) then
         print *,'OK'
      else
         print *,'NG'
      endif
      end

