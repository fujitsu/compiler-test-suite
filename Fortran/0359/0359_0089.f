      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10,10),b(10),c(10,10),d(10)

      do j=1,10
         do i=1,10
            a(i,j)=cmplx(i+2,j+3)
            b(i)=cmplx(i,i+10)
            c(i,j)=0
            d(i)=0
         enddo
      enddo

      do k=1,3
         do i=1,10
            d(i)=d(i)+b(k)
         enddo
      enddo

      print *,d

      do k=1,2
         do i=1,10
            c(i,1)=c(i,1)-a(i,k)*b(1)
         enddo
      enddo

      write(6,*) (c(i,1),i=1,10)
      end

      subroutine c16
      complex*16 a(10,10),b(10),c(10,10),d(10)

      do j=1,10
         do i=1,10
            a(i,j)=cmplx(i+2,j+3)
            b(i)=cmplx(i,i+10)
            c(i,j)=0
            d(i)=0
         enddo
      enddo

      do k=1,3
         do i=1,10
            d(i)=d(i)+b(k)
         enddo
      enddo

      print *,d

      do k=1,2
         do i=1,10
            c(i,1)=c(i,1)-a(i,k)*b(1)
         enddo
      enddo

      write(6,*) (c(i,1),i=1,10)
      end

