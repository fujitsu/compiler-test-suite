      complex*8  a(10),b(10),d(10),e(10),f(10)
      complex*8  resf(10)
      real*4  aa,x(10)
      integer N
      data x/4,5,6,7,8,9,10,11,12,13/

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
      real*4  aa,x(N)
      complex*8  a(N),b(N),d(N),e(N),resf(N)
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

         d(i) = t2 + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = d(i) - aa
         else
            e(i) = d(i) + aa
         endif

         resf(i) = a(i) * e(i) + x(i)

      enddo
      end

      subroutine sub1(N,a,b,d,e,f,x,aa)
      integer N
      real*4  aa,x(N)
      complex*8  a(N),b(N),d(N),e(N),f(N)
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

         d(i) = t2 + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = d(i) - aa
         else
            e(i) = d(i) + aa
         endif

         f(i) = a(i) * e(i) + x(i)

      enddo
      end

