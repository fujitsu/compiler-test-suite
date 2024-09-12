      real * 4 a(10,10),b(10,10)
      m = 0 
      do i=1,10
      do j=1,10
        a(i,j) = m
        b(i,j) = m+1
        m = m+1
      enddo
      enddo         

      call sub(1,10,3,9,a,b,10,10)
      
      stop
      end
      subroutine sub(n1,n2,m1,m2,a,b,n,m)
      real * 4 a(n,m),b(n,m)
      
      s1 = 0
      s2 = 0
      do j=n1,n2
      do i=m1,m2
        a(i,j)=a(i,j)+b(i,j)
        if (a(i,j).gt.0) then
          s1 = a(i,j)
          a(i,j) = a(i,j) -1
        endif
        s2 = a(i,j)
      enddo
      enddo

      write(6,*) s1,s2
      write(6,*) a
      return
      end

