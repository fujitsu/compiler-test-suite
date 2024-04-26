      real*8 a(2)/2*1/,b(100)
      real*8 c(100)

      n1 = -10
      n2 = 50
      n3 = 0

      do i=1,100,4
         c(i) = n1
         c(i+1) = n2
         c(i+2) = n3
         c(i+3) = i
         n1 = n1 + 1
         n2 = n2 - 2
         n3 = n3 + 1
      enddo

      do i=1,100
         a(1) = max(a(1),c(i))
      enddo
      write(6,*) a
      do i=1,100
         a(2) = min(a(2),c(i))
      enddo
      write(6,*) a
      end
