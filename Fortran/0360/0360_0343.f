      real*8 a(10,10),b(10,10),c(10,10)
      do i=1,10
         do j=1,10
            a(i,j) = 0
            b(i,j) = i
            c(i,j) = j
         enddo
      enddo

      nn = ifunc(2)

      do j=1,10
         do i=1,10
            a(i,j) = 1/sqrt(b(i,j))
         enddo
      enddo
      write(6,*) a

      do j=1,10
         do i=1,10
            a(i,j) = c(i,j)**(2/sqrt(b(i,j)))
         enddo
      enddo
      write(6,*) a
      do j=1,10
         do i=1,10
            a(i,j) = (c(i,j)**nn)/sqrt(b(i,j))
         enddo
      enddo
      write(6,*) a
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end

