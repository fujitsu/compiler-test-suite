      integer a(100,100)
      a=0
      n=100
      call sub(a,n)
      write(6,*)"a=",a
      end
      subroutine sub(a,n)
      integer a(100,100)
      do i=1,10
         do j=1,n
            a(j,i)=1
         enddo
      enddo
      end
