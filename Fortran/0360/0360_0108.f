      double complex a(100), t,b(100),res(4)
      data res/(-16240800.0,8458750.0),
     +     (16240800.0,-8458750.0),
     +     (-16240800.000000000000,8458750.0),
     + (-242400.0,126250.000000)/
      do i=1,100
         a(i) = cmplx(i,i*10)
         b(i) = cmplx(i*2,i*5)
      enddo
      t = 0
      call foo_complex(100,a,t,b)
      if (isub(t,res(1)).eq.1) stop 1
      t = 0
      call foo_complex2(100,a,t,b)
      if (isub(t,res(2)).eq.1) stop 2
      t = 0
      call foo_complex3(100,a,t,b)
      if (isub(t,res(3)).eq.1) stop 3
      t = 0
      call foo_complex4(100,a,t,b)
      if (isub(t,res(4)).eq.1) stop 4
      write(6,*) ' ok '
      end

      subroutine foo_complex(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t + a(i) * b(i)
      enddo
      end
      subroutine foo_complex2(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t = t - a(i) * b(i)
      enddo
      end
      subroutine foo_complex3(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t =  a(i) * b(i) + t
      enddo
      end
      subroutine foo_complex4(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t
      integer i
      do i = 1, n
         t =  a(i) * b(i) - t
      enddo
      end

      integer function isub(r1,r2)
      complex*16 r1,r2
      isub = 0

      if (r1.ne.r2) then
         write(6,*) "calc = ",r1
         write(6,*) "res  = ",r2
         isub = 1
         return
      endif
      return
      end
