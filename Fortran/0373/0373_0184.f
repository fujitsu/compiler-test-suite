      real * 4 a(10,10),b(10,10)
      logical * 4 l(10,10)

      m = 0 
      do i=1,10
      do j=1,10
        a(i,j) = m
        b(i,j) = m+1
        m = m+1
        if (mod(m,2).eq.0) then 
          l(i,j) = .false.
        else
          l(i,j) = .true.
        endif       
      enddo
      enddo         

      call sub(1,10,3,9,a,b,l,10,10)
      
      stop
      end
      subroutine sub(n1,n2,m1,m2,a,b,l,n,m)
      real * 4 a(n,m),b(n,m)
      logical * 4 l(n,m)
      
      s1 = 0
      do j=n1,n2
      do i=m1,m2
        if (l(i,j)) then
          s1 = max(s1,a(i,j))
        endif
      enddo
      enddo
      write(6,*) s1

      s2 = 99999
      do j=n1,n2
      do i=m1,m2
        if (l(i,j)) then 
          s2 = min(s2,a(i,j))
        endif
      enddo
      enddo
      write(6,*) s2


      s1 = 0
      do j=n1,n2
      do i=m1,m2
        if (l(i,j)) then
          if (s1.lt.a(i,j)) then 
            s1 = a(i,j)
          endif
        endif
      enddo
      enddo
      write(6,*) s1

      s2 = 99999
      do j=n1,n2
      do i=m1,m2
        if (l(i,j)) then
          if (s2.gt.a(i,j)) then
            s2 = a(i,j)
           endif
        endif
      enddo
      enddo
      write(6,*) s2

      return
      end

