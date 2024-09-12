      implicit  real*8(a-h)
      real*8 d(100,100)
      common /blk1/ a(100,100),b(100,100),c(100,100)
      integer l(100) 
      data   dx,dy/1.d0,2.d0/
      do  i=1,100
       do  j=1,100
         a(i,j) = dx
         b(i,j) = dy
         d(i,j) = dx
         c(i,j) = float(i)*dy
         l(i) = j         
       enddo
      enddo
      n=100
      m=100
      call sub(a,b,c,d,e,n,m,l)
      write(6,*) a,b,c
      stop
      end
        subroutine sub(a,b,c,d,e,n,m,l)
        real*8 a(n,m),b(n,m),c(m),d(n,m),e
        integer l(m)
        do i=1,n
         do j=1,m
           a(i,j) = a(i,j)+b(1,l(j))+c(l(j))+d(i,j)
         enddo
        enddo
        end
