      call c8
      call c16
      end

      subroutine c8
      complex*8 a2(10),b(10),c(10),a8(10),d(10),a(10)
      real   x(10),y(10)/10*3/

      j =1
      do i=1,10
         b(i) = cmplx(j+10,j+11)
         d(i) = cmplx(j+20,j+21)
         c(i) = cmplx(j,j+1)
         a(i) = cmplx(j,j+1)
         j=j+2
      enddo

      do i = 1 , 10
         a2(i) =  b(i)+5+ c(i) + 30.0 + d(i) 
         a8(i) =  b(i)+ 5+ c(i) 
      enddo
      print *,a2
      print *,a8

      do i = 1 , 10
         a2(i) =  b(i)+ c(i)
         a8(i) =  b(i)+  c(i)
      enddo
      print *,a2
      print *,a8

      do  i=1,10
         b(i) = a(i) +d(i)
         y(i) = a(i) +d(i)+3
         x(i) = a(i) +d(i)-3
      enddo
      write(6,*) b
      write(6,*) d
      write(6,*) x
      write(6,*)y

      do  i=1,10
         b(i) = a(i)+d(i)+3
         x(i) = -b(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) x
      end

      subroutine c16
      complex*16 a2(10),b(10),c(10),a8(10),d(10),a(10)
      real*8   x(10),y(10)/10*3/

      j =1
      do i=1,10
         b(i) = dcmplx(j+10,j+11)
         d(i) = dcmplx(j+20,j+21)
         c(i) = dcmplx(j,j+1)
         a(i) = dcmplx(j,j+1)
         j=j+2
      enddo

      do i = 1 , 10
         a2(i) =  b(i)+5+ c(i) + 30.0 + d(i) 
         a8(i) =  b(i)+ 5+ c(i) 
      enddo
      print *,a2
      print *,a8

      do i = 1 , 10
         a2(i) =  b(i)+ c(i)
         a8(i) =  b(i)+  c(i)
      enddo
      print *,a2
      print *,a8

      do  i=1,10
         b(i) = a(i) +d(i)
         y(i) = a(i) +d(i)+3
         x(i) = a(i) +d(i)-3
      enddo
      write(6,*) b
      write(6,*) d
      write(6,*) x
      write(6,*)y

      do  i=1,10
         b(i) = a(i)+d(i)+3
         x(i) = -b(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) x
      end
