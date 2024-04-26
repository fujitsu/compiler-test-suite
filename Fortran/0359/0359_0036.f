      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10),d(10),x
      DATA X/(2.0,2.0)/
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
         d(i) = cmplx(i-3,i-4)
      enddo

      DO I = 1 , 10
         a(I) = b(I) + c(5) +  c(3) - d(2)
      enddo
      write(6,*) a
      
      DO I = 1 , 10
         a(I) = b(i)  - 2.0 - x
      enddo
      write(6,*) a

      return
      end

      subroutine c16
      complex*16 a(10),b(10),c(10),d(10),x
      DATA X/(2.0,2.0)/
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
         d(i) = cmplx(i-3,i-4)
      enddo

      DO I = 1 , 10
         a(I) = b(I) + c(5) +  c(3) - d(2)
      enddo
      write(6,*) a

      DO I = 1 , 10
         a(I) = b(i)  - 2.0 - x
      enddo
      write(6,*) a

      return
      end
