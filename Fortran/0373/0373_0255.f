      subroutine sub(a,n)
      real(kind=16) s,a(n)
      s=a(1)
      do i=2,n
         if (s<a(i)) then
            s=a(i)
         endif
      enddo
      write(6,*) s
      end
      real(kind=16) a(10)
      data a/0.0,1.0,2.0,-1.0,0.0,1.0,2.0,-1.0,0.0,1.0/
      call sub(a,10)
      end
