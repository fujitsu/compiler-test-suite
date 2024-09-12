      real * 4 a(205,10,10),b(10,205,10)
      data a/20500*1./
      data b/20500*2./
      data n1,n2,n3/205,10,10/

      do i=1,205,20
        call sub(a,b,n1,n2,n3,i)
      enddo
      write(6,*) a
      
      stop
      end
      subroutine sub(a,b,n1,n2,n3,mm)
      real * 4 a(n1,n2,n3),b(n1,n2,n3)
      
      do k=1,n3
      do j=1,n2
      do i=mm,n1
        a(i,j,k)=a(i,j,k)+b(i,j,k)
      enddo
      enddo
      enddo

      return
      end
