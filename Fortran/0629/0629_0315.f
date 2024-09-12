      integer a(10),b(20,30),c(30,30,30)
      a=0
      b=0
      c=0
      call sub(a,b,c)
      write(6,*)"a=",a
      write(6,*)"b=",b
      write(6,*)"c=",c
      end

      subroutine sub(a,b,c)
      integer a(10),b(20,30),c(30,30,30)
      do k=1,10
         a(k)=k
         do j=1,20
            b(j,k)=j
            do i=1,30
               c(i,j,k)=i
            enddo
         enddo
      enddo
      end
