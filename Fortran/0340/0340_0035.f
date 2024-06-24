      complex*8  a(10),b(10),d(10),e(10),f(10)
      complex*8  x(10),resf(10)
      real*4  aa
      integer N
      data x/(4.0,0.0),(5.0,0.0),(6.0,0.0),(7.0,0.0),(8.0,0.0),
     C    (9.0,0.0),(10.0,0.0),(11.0,0.0),(12.0,0.0),(13.0,0.0)/

      N=10
      aa = 1.0
      call sub0(N,a,b,d,e,resf,x,aa)
      call sub1(N,a,b,d,e,f,x,aa)
      
      do i=1,10
         if (f(i).ne.resf(i)) goto 199
      enddo

      write(6,*) "ok"
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) f
 1100 continue

      END                      

      subroutine sub0(N,a,b,d,e,resf,x,aa)
      integer N
      real*4  aa
      complex*8  a(N),b(N),d(N),e(N),resf(N),x(N)
      complex*8  t1, t2

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         t1 = a(i)
         if (aa .gt. 0.0) then
            t2 = t1 + aa + 1.0
         else
            t2 = t1 + aa - 1.0
         endif

         d(i) = a(i) + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = t2 - aa
         else
            e(i) = t2 + aa
         endif

         resf(i) = a(i) * e(i) + t2

      enddo
      end

      subroutine sub1(N,a,b,d,e,f,x,aa)
      integer N
      real*4  aa
      complex*8  a(N),b(N),d(N),e(N),f(N),x(N)
      complex*8  t1, t2

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         t1 = a(i)
         if (aa .gt. 0.0) then
            t2 = t1 + aa + 1.0
         else
            t2 = t1 + aa - 1.0
         endif

         d(i) = a(i) + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = t2 - aa
         else
            e(i) = t2 + aa
         endif

         f(i) = a(i) * e(i) + t2

      enddo
      end
