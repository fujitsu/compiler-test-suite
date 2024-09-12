      integer a(10,10), b(30,10),c(10)
      a=0
      b=0
      c=0
      n=10
      call sub(a,b,c,n)
      write(6,*)"a=",a
      write(6,*)"b=",b
      write(6,*)"c=",c 
      end

      subroutine sub(a,b,c,n)
      integer a(10,10), b(30,10),c(10)
      do i=1,10
         c(i)=i
         do j1=1,n
            a(j1,i)=1
         enddo
         do j2=1,10
            b(j2,i)=1
         enddo
      enddo
      end
