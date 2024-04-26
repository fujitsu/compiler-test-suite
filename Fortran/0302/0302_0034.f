      parameter(n=10000)
      integer a(n)
      integer sum
      do i=1,n
        a(i) =i
      enddo
      sum = 0
      do i=1,n
        sum = sum + a(i)
      enddo
      print *,sum
      end
