      complex*8 c8a(10),c8b(10)
      complex*16 c16a(10),c16b(10)
      complex*32 c32a(10),c32b(10)
      n = 1
      do i=1,10
         c8b(i) = cmplx(i*n,i*(n+5))
         n = -n 
         c16b(i) = c8b(i)
         c32b(i) = c8b(i)
      enddo

      do i=1,10
         c8a(i) = -c8b(i)
      enddo
      write(6,*) c8a

      do i=1,10
         c16a(i) = -c16b(i)
      enddo
      write(6,*) c16a

      do i=1,10
         c32a(i) = -c32b(i)
      enddo
      write(6,*) c32a
      end

         
