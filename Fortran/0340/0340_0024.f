      real*4  a(10),b(10),c(10),d(10),e(10)
      real*4  x(10),resf(10)
      real*4  aa
      integer N
      data x/4,5,6,7,8,9,10,11,12,13/
      data resf/16,19,22,25,28,31,34,37,40,43/

      N=10
      aa = 1.0
      call sub1(N,a,b,c,d,e,x,aa)
      
      do i=1,10
         if (b(i).ne.resf(i)) goto 199
      enddo

      write(6,*) "ok"
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) b
 1100 continue

      END                      

      subroutine sub1(N,a,b,c,d,e,x,aa)
      integer N
      real*4  a(N),b(N),c(N),d(N),e(N),x(N),aa

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

         b(i) = e(i) + a(i)

      enddo
      end

