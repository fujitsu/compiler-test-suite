      integer a(100000),b(100000)

      n = 1
      do i=1,100000
         a(i) = 0
         b(i) = 1
      enddo

      do i=1,10
         n = n * 2
         a(i) = a(i) + 1
         b(i) = n + a(i)
      enddo
      write(6,*) b(5),a(6)

      do i=1,100000
         n = n * 2
         a(i) = a(i) + 1
         b(i) = n + a(i)
      enddo
      write(6,*) b(7),a(8)
      end
