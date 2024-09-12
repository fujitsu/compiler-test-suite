      subroutine sub(a,n)
      real(kind=16) s,a(n)
      s=a(1)
      do i=2,n
         s=s+a(i)
      enddo
      write(6,*) s
      end
      real(kind=16) a(10)
      data a/1.0,2.0,-1.0,1.0,2.0,-1.0,1.0,2.0,-1.0,1.0/
      call sub(a,10)
      end
