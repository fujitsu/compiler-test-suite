      real * 4 a(2050,10),b(2050,10)
      data a/20500*1./
      data b/20500*2./
      data n,m/2050,10/

      do i=1,2050,205
        call sub(a,b,n,m,i)
      enddo
      write(6,*) a
      
      stop
      end
      subroutine sub(a,b,n,m,mm)
      real * 4 a(n,m),b(n,m)
      
      do j=1,m
      do i=mm,2050
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      return
      end
