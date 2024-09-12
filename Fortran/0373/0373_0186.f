      real * 4 a(10,10),b(10,10)
      data a/100*1./
      data b/100*2./
      call sub(1,10,2,9,a,b,10,10)
      
      stop
      end
      subroutine sub(n1,n2,m1,m2,a,b,n,m)
      real * 4 a(n,m),b(n,m),c(10)
      data c/1,2,3,4,5,6,7,8,9,10/
      
      do k=1,10
      do j=n1,n2
      do i=m1,m2
        if (k.gt.5) then
          a(i,j)=a(i,j)+b(i,j) + c(k)
        endif
      enddo
      enddo
      enddo

      write(6,*) a
     
      return
      end
