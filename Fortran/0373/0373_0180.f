      real * 4 a(300,10),b(300,10)
      data a/3000*1./
      data b/3000*2./

      call sub(1,10,10,290,a,b,300,10)
      stop
      end
      subroutine sub(n1,n2,m1,m2,a,b,n,m)
      real * 4 a(n,m),b(n,m),s
     
      s = 0 
      do j=n1,n2
      do i=m1,m2
         a(i,j)=a(i,j)+sin(b(i,j))
      enddo
      enddo

      write(6,*) s
      write(6,*) a
      return
      end
