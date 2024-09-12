      call sub(1,10,2,9)
      stop
      end
      subroutine sub(n1,n2,m1,m2)
      real * 4 a(10,10),b(10,10)
      data a/100*1./
      data b/100*2./
      
      do j=n1,n2
      do i=m1,m2
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      return
      end
