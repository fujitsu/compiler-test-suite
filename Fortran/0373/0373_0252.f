      subroutine sub1(a,n)
      real(kind=16) s,a(n)
      s=a(1)
      do i=2,n
         if (s<=a(i)) then
            s=a(i)
         endif
      enddo
      write(6,*) s
      end
      subroutine sub2(a,n)
      real(kind=16) s,a(n)
      s=a(1)
      do i=2,n
         if (s<=a(i)) then
            s=a(i)
            k=i
         endif
      enddo
      write(6,*) k,s
      end
      real(kind=16) a(10)
      data a/0.0,1.0,2.0,-1.0,0.0,1.0,2.0,-1.0,0.0,1.0/
      call sub1(a,10)
      call sub2(a,10)
      end
