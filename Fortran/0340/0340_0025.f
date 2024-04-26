      real*4  a(10),b(10),c(10),d(10),e(10),f(10)
      real*4  x(10),resf(10)
      real*4  aa
      integer N
      data x/4,5,6,7,8,9,10,11,12,13/

      N=10
      aa = 1.0
      call sub0(N,a,b,c,d,e,resf,x,aa)
      call sub1(N,a,b,c,d,e,f,x,aa)
      
      do i=1,10
         if (abs(f(i)-resf(i))>0.000005) goto 199
      enddo

      write(6,*) "ok"
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) f
 1100 continue

      END                      

      subroutine sub0(N,a,b,c,d,e,resf,x,aa)
      integer N
      real*4  a(N),b(N),c(N),d(N),e(N),resf(N),x(N),aa

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         if (aa .gt. 0.0) then
            c(i) = b(i) + a(i) + aa + 1.0
         else
            c(i) = b(i) + a(i) + aa - 1.0
         endif

         d(i) = a(i) + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = c(i) - aa
         else
            e(i) = c(i) + aa
         endif

         resf(i) = SIN(b(i)) * e(i) + x(i)

      enddo
      end

      subroutine sub1(N,a,b,c,d,e,f,x,aa)
      integer N
      real*4  a(N),b(N),c(N),d(N),e(N),f(N),x(N),aa

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         if (aa .gt. 0.0) then
            c(i) = b(i) + a(i) + aa + 1.0
         else
            c(i) = b(i) + a(i) + aa - 1.0
         endif

         d(i) = a(i) + b(i) + x(i)
         if (aa .le. 0.0) then
            e(i) = c(i) - aa
         else
            e(i) = c(i) + aa
         endif

         f(i) = SIN(b(i)) * e(i) + x(i)

      enddo
      end

