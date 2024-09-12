      real * 4 a(300,10),b(300,10)
      logical * 4 l(300,10)
      data a/3000*1./
      data b/3000*2./
      data l/300*.true.,300*.false.,300*.true.,300*.false.,
     +       300*.true.,300*.false.,300*.true.,300*.false.,
     +       300*.true.,300*.false./

      call sub(1,10,10,290,a,b,l,300,10)
      stop
      end
      subroutine sub(n1,n2,m1,m2,a,b,l,n,m)
      real * 4 a(n,m),b(n,m)
      logical * 4 l(n,m)
      
      do j=n1,n2
      do i=m1,m2
        if (l(i,j)) then
          a(i,j)=a(i,j)+b(i,j)
        endif
      enddo
      enddo

      write(6,*) a
      return
      end
