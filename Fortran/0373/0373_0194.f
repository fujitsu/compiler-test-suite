      real * 4 a(10,10),b(10,10)
      integer * 4 l(10)
      data a/100*1./
      data b/100*2./
      data l/1,2,3,4,5,6,7,8,9,10/
     
      call sub(a,b,10,10,l,10)
      
      stop
      end
      subroutine sub(a,b,n,m,l,ln)
      real * 4 a(n,m),b(n,m)
      integer * 4 l(ln)
      
      do j=l(1),l(10)
      do i=l(2),l(9)
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      return
      end
