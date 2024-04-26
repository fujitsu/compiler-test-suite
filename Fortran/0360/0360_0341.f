      real*8 a(11)/11*0/,rfunc
      real*8 b(11)/12,11,10,9,8,7,6,5,4,3,2/
      real*8 c(11)/1,2,3,4,5,6,7,8,9,10,11/,rr
      rr = rfunc(1)
      do i=1,10
         a(i) = (rr+c(i))/sqrt(abs(b(i)-c(i)))
      enddo
      write(6,*) a

      call sub1(a,b,11)
      end

      real*8 function rfunc(nn)
      rfunc = nn
      return
      end

      subroutine sub1(a,b,n)
      real*8 a(n),b(n)
      do i=1,n
         a(i) = 2/sqrt(b(i)*i)
      enddo
      write(6,*) a
      end
