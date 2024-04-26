
      real*4  a(10),b(10),c(10),d(10),e(10)
      real*4  x(10),rese(10)
      real*4  aa
      integer N
      data x/4,5,6,7,8,9,10,11,12,13/
      data rese/22,33,46,61,78,97,118,141,166,193/

      N=10
      aa = 1.0
      call sub1(N,a,b,c,d,e,x,aa)

      do i=1,10
         if (e(i).ne.rese(i)) goto 199
      enddo

      write(6,*) "ok"
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) e
 1100 continue

      END                      

      subroutine sub1(N,a,b,c,d,e,x,aa)
      integer N
      real*4  a(N),b(N),c(N),d(N),e(N),x(N),aa
      real*4 ix

      k=1
      do 2001 while(k.lt.3)
        do i=1,N
          a(i) = x(i) + aa
          b(i) = x(i) - aa
          ix = aa - 1.0 + a(i)*b(i)
          c(i) = b(i) + a(i)
          d(i) = a(i) + b(i) + x(i)
          e(i) = c(i) - aa + ix
        enddo
        k=k+1
 2001 continue
      end
