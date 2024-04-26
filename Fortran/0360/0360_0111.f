      complex*16 a(100), b(100)
      complex*8 t(1),res(4)
      data res/(-16240800.0,8458750.0),
     +     (16240800.0,-8458750.0),
     +     (16240800.0,-8458750.0),
     + (16240800.0,-8458750.000000)/

      do i=1,100
         a(i) = cmplx(i,i*10)
         b(i) = cmplx(i*2,i*5)
      enddo
      t = 0
      call foo_complex(100,a,t,b)
      if (isub(t(1),res(1)).eq.1) stop 1
      t = 0
      call foo_complex2(100,a,t,b)
      if (isub(t(1),res(2)).eq.1) stop 2
      t = 0
      call foo_complex2(100,a,t,b)
      if (isub(t(1),res(3)).eq.1) stop 3
      t = 0
      call foo_complex2(100,a,t,b)
      if (isub(t(1),res(4)).eq.1) stop 4
      write(6,*) ' ok '
      end

      subroutine foo_complex(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) + a(i) * b(i)
      enddo
      end
      subroutine foo_complex2(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = t(1) - a(i) * b(i)
      enddo
      end

      subroutine foo_complex3(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = a(i) * b(i) + t(1)
      enddo
      end

      subroutine foo_complex4(n,a,t,b)
      implicit none
      integer n
      complex*16 a(n), b(n)
      complex*8 t(1)
      integer i
      do i = 1, n
         t(1) = - a(i) * b(i) + t(i)
      enddo
      end

      integer function isub(r1,r2)
      complex*8 r1,r2
      isub = 0

      if (r1.ne.r2) then
         write(6,*) "calc = ",r1
         write(6,*) "res  = ",r2
         isub = 1
         return
      endif
      return
      end
