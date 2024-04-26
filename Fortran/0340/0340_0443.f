      real*4 a(10),b(10)
      do i=1,10
         a(i) = i
         b(i) = i
         n = i
         m = i
      enddo


      do i=1,10
         a(i) = a(i) - 2
         do j=1,10
            b(j) = b(j) + 2
         enddo
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         a(i) = a(i) - 2

         do j=1,10
            b(j) = b(j) + 2
         enddo
      enddo
      write(6,*) a
      write(6,*) b


      do i=1,10
         a(i) = a(i) - 2
         do j=1,10
            b(j) = b(j) + 2
         enddo
      enddo
      write(6,*) a
      write(6,*) b
      end


