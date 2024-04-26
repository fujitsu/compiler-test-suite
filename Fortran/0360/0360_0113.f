      double complex a(100), t,b(100),res(6)
      do i=1,100,2
         a(i) = cmplx(i,i+2)
         b(i) = (2.,4.)
         a(i+1) = -cmplx(i,i+3)
         b(i+1) = (-2.,-8.)
      enddo
      t = 0
      call foo_complex(100,a,t,b)
      write(6,*) t
      t = 0
      call foo_complex2(100,a,t,b)
      write(6,*) t

      t = 0
      call foo_complex3(100,a,t,b)
      write(6,*) t

      t = 0
      call foo_complex4(100,a,t,b)
      write(6,*) t

      t = 0
      call foo_complex5(100,a,t,b)
      write(6,*) t

      t = 0
      call foo_complex6(100,a,t,b)
      write(6,*) t
      end

      subroutine foo_complex(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t + abs(a(i)+b(i))
      enddo
      end
      subroutine foo_complex2(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t - abs(a(i)-b(i))
      enddo
      end

      subroutine foo_complex3(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t + abs(a(i))+b(i)
      enddo
      end
      subroutine foo_complex4(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t - abs(a(i))-b(i)
      enddo
      end

      subroutine foo_complex5(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t + a(i)+abs(b(i))
      enddo
      end
      subroutine foo_complex6(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t - a(i)- abs(b(i))
      enddo
      end
