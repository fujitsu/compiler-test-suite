      real a(10)/10*0/
      call sub(a,10)
      write(6,*) a
      end
      subroutine sub(a,n)
      real a(n)
         do i=1,10
            a(i)=i
         enddo
      end
