      complex*8  a(10),b(10),c(10),d(10),e(10),f(10)
      complex*8  x(10),resf(10)
      real*4  aa
      integer N
      data x/4,5,6,7,8,9,10,11,12,13/

      N=10
      aa = 1.0
      call sub0(N,a,b,c,d,e,resf,x,aa)
      call sub1(N,a,b,c,d,e,f,x,aa)
      
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

      subroutine sub0(N,a,b,c,d,e,resf,x,aa)
      integer N
      complex*8  a(N),b(N),c(N),d(N),e(N),resf(N),x(N)
      complex*8  t1,t2
      real*4 aa

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         t1 = a(i) + b(i)
         d(i) = t1
         c(i) = b(i) + a(i) + aa + 1.0
         e(i) = c(i) - aa
         t2 = SIN(c(i)) + SIN(t1)
         resf(i) = t2 * e(i) + x(i)
      enddo
      end

      subroutine sub1(N,a,b,c,d,e,f,x,aa)
      integer N
      complex*8  a(N),b(N),c(N),d(N),e(N),f(N),x(N)
      complex*8  t1, t2
      real*4 aa

      do i=1,N
         a(i) = x(i) + aa
         b(i) = x(i) - aa
         t1 = a(i) + b(i)
         d(i) = t1
         c(i) = b(i) + a(i) + aa + 1.0
         e(i) = c(i) - aa
         t2 = SIN(c(i)) + SIN(t1)
         f(i) = t2 * e(i) + x(i)

      enddo
      end

