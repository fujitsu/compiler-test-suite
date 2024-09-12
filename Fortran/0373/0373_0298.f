      real*8 stime,etime
      real a(10),b(10),c(10),d(10)
      integer x(2048)/2000*1,48*0/,n/10/
      integer v(10)/3,9,2,10,7,1,5,6,4,8/
      integer w(10)/2,3,1,9,10,5,8,4,7,6/,m/0/
      data a/10*0/
      data b/10*5./
      data c/10*2./
      data d/10*3./

      do i=1,n,2
        m = m+1
        if(x(i).eq.1) then
          a(v(i)) = b(w(i)) * m
          c(i) = a(v(i)) - i
          d(m) = c(i) / 2
        endif
      enddo
      print *,d

      m = 0
      do i=1,n,2
        m = m+1
        if(x(i).eq.1) then
          a(v(i)) = b(w(i)) * m
          c(i) = a(v(i)) - i
          d(m) = c(i) / 2
        endif
      enddo
      print *,d

      m = 0
      do i=1,n,2
        m = m+1
        if(x(i).eq.1) then
          a(v(i)) = b(w(i)) * m
          c(i) = a(v(i)) - i
          d(m) = c(i) / 2
        endif
      enddo
      print *,d

      do i=1,n,2
        m = m+1
        if(x(i).eq.1) then
          a(v(i)) = b(w(i)) * m
          c(i) = a(v(i)) - i
          d(m) = c(i) / 2
        endif
      enddo
      print *,d

      end
