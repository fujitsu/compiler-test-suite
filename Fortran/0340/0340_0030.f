      complex*8  a(10),b(10),c(10),e(10),f(10)
      complex*8  resf(10)
      real*4  aa,x(10)
      integer N
      data x/4,5,6,7,8,9,10,11,12,13/

      N=10
      aa = 1.0
      call sub0(N,a,b,c,e,resf,x,aa)
      call sub1(N,a,b,c,e,f,x,aa)
      
      do i=1,10
         if (f(i).ne.resf(i)) goto 199
      enddo

      write(6,*) "ok"
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) resf
      write(6,*) f
 1100 continue

      END                      

      subroutine sub0(N,a,b,c,e,resf,x,aa)
      integer N
      complex*8  a(N),b(N),c(N),e(N),resf(N)
      real*4 aa,x(N)

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         if (aa .gt. 0.0) then
            c(i) = b(i) + a(i) + aa + 1.0
            t1 = c(i)
         else
            c(i) = b(i) + a(i) + aa - 1.0
            t1 = c(i)
         endif

         t1 = a(i) + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = c(i) + t1 - aa
         else
            e(i) = c(i) + t1 + aa
         endif

         resf(i) = SIN(t1) * e(i) + x(i)

      enddo
      end

      subroutine sub1(N,a,b,c,e,f,x,aa)
      integer N
      complex*8  a(N),b(N),c(N),e(N),f(N)
      complex*8  t1
      real*4 aa,x(N)

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         if (aa .gt. 0.0) then
            c(i) = b(i) + a(i) + aa + 1.0
            t1 = c(i)
         else
            c(i) = b(i) + a(i) + aa - 1.0
            t1 = c(i)
         endif

         t1 = a(i) + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = c(i) + t1 - aa
         else
            e(i) = c(i) + t1 + aa
         endif

         f(i) = SIN(t1) * e(i) + x(i)

      enddo
      end

