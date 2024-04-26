      real*4 a(10,10),b(10,10),tmp,res(10,10)
      do i=1,10
         do j=1,10
            a(i,j) = i
            b(i,j) = j
            res(i,j) = i
         enddo
      enddo


      do j=1,10

      do i=2,10
         tmp = (b(i,j)) * (b(i,j)) + (b(i,j))
         res(i,j) = res(i-1,j) + tmp
      enddo
      enddo

      do j=1,10

      do i=2,10
         tmp = (b(i,j)) * (b(i,j)) + (b(i,j))
         a(i,j) = a(i-1,j) + tmp
      enddo
      enddo


      do i=1,10
         do j=1,10
            if (a(i,j) .ne. res(i,j)) then
               write(6,*) i,j,a(i,j),res(i,j)
               stop
            endif
         enddo
      enddo
      write(6,*) 'ok'
      end
