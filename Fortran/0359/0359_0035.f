      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10),aa(10),bb(10)
      real x(10)
      do i=1,10
         a(i) = 0
         aa(i) = 0
         b(i) = cmplx(i,i)
         bb(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
         x(i) = 10-i
      enddo

      do i=2,10
         b(i) = a(1)
         do j=1,10
            aa(j) = (2.,3.)
            a(j) = c(j) - b(i)+b(j)
         enddo
      enddo

      write(6,*) a
      write(6,*) b

      do  i=2,8
         bb(i) = aa(i)
         do j=i+1,10
            aa(j) = bb(j)+aa(i)
         enddo
      enddo
      WRITE(6,*) bb

      i = 1
      do j=i+1,10
         aa(j) = bb(j)+aa(i)-x(i)
      enddo
      WRITE(6,*) aa
      WRITE(6,*) bb
      
      do j=1,10
         aa(j) = (2.,3.)
         a(j) = bb(j) + c(j)
      enddo
      write(6,*) a
      
      do j=3,10
         aa(j) = bb(j)+1
      enddo
      WRITE(6,*) aa

      do j=i+1,10
         aa(j) = bb(j)+aa(i)-x(i)
      enddo
      WRITE(6,*) aa

      return
      end

      subroutine c16
      complex*16 a(10),b(10),c(10),aa(10),bb(10)
      real x(10)
      do i=1,10
         a(i) = 0
         aa(i) = 0
         b(i) = cmplx(i,i)
         bb(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
         x(i) = 10-i
      enddo

      do i=2,10
         b(i) = a(1)
         do j=1,10
            aa(j) = (2.,3.)
            a(j) = c(j) - b(i)+b(j)
         enddo
      enddo
      write(6,*) a
      write(6,*) b

      do  i=2,8
         bb(i) = aa(i)
         do j=i+1,10
            aa(j) = bb(j)+aa(i)
         enddo
      enddo
      WRITE(6,*) bb

      i = 1
      do j=i+1,10
         aa(j) = bb(j)+aa(i)-x(i)
      enddo
      WRITE(6,*) aa
      WRITE(6,*) bb

      do j=1,10
         aa(j) = (2.,3.)
         a(j) = bb(j) + c(j)
      enddo
      write(6,*) a

      do j=3,10
         aa(j) = bb(j)+1
      enddo
      WRITE(6,*) aa

      do j=i+1,10
         aa(j) = bb(j)+aa(i)-x(i)
      enddo
      WRITE(6,*) aa

      return
      end

