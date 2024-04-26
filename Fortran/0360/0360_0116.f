      complex*16 a(100), b(100)
      complex*8 t(1)
      do i=1,100,2
         a(i) = cmplx(i,i*10)
         b(i) = cmplx(i*2,i*5)
         a(i+1) = -cmplx(i+3.,(i+3)*10)
         b(i+1) = -cmplx((i+3)*2,(i+3)*5)
      enddo
      t = 0
      call foo_complex(100,a,t,b)
      write(6,*) t(1)
      t = 0
      call foo_complex2(100,a,t,b)
      write(6,*) t(1)
      t = 0
      call foo_complex3(100,a,t,b)
      write(6,*) t(1)
      t = 0
      call foo_complex4(100,a,t,b)
      write(6,*) t(1)
      t = 0
      call foo_complex5(100,a,t,b)
      write(6,*) t(1)
      t = 0
      call foo_complex6(100,a,t,b)
      write(6,*) t(1)
      end

      subroutine foo_complex(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) + abs(a(i)+b(i))
      enddo
      end
      subroutine foo_complex2(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) - abs(a(i))+b(i)
      enddo
      end


      subroutine foo_complex3(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) + abs(a(i))+b(i)
      enddo
      end
      subroutine foo_complex4(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) - abs(a(i))-b(i)
      enddo
      end


      subroutine foo_complex5(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) + a(i)+abs(b(i))
      enddo
      end
      subroutine foo_complex6(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) - a(i)-abs(b(i))
      enddo
      end

