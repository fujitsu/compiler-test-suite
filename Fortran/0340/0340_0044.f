      real*4  a(10),b(10),c(10)
      real*4  d(10),e(10)
      real*4  resa(10)
      real*4  x,temp

      N=10
      x=2
      do i=1,N
            a(i) = 0 + i
            b(i) = 1 + i
            c(i) = 2 + i
            d(i) = 3 + i
            e(i) = 4 + i
            temp = b(i) * c(i)
            temp = temp + c(i) * d(i)
            resa(i) = (temp + d(i) * e(i)) * x
      enddo

      call sub1(a,b,c,d,e,N,x)

      do i=1,10
         if (abs(a(i)-resa(i)) > 0.005) goto 199
      enddo

      write(6,*) "ok"
      goto 100
 199  write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) resa
 100  continue
      END                      

      subroutine sub1(a,b,c,d,e,n,x)
      real*4  a(n),b(n),c(n),d(n),e(n)
      real*4  x,temp

      i=1
      do 10 while ( i.le.n )
            temp = b(i) * c(i)
            temp = temp + c(i) * d(i)
            a(i) = (temp + d(i) * e(i)) * x
             i=i+1
  10  continue
      end
