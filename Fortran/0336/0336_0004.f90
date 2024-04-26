      integer(kind=4),parameter  :: n=100
      real(kind=8),dimension(n)  :: r801
      real(kind=4),dimension(n)  :: r401,r402
      real(kind=4)               :: r42
      real(kind=4)               :: r43
      r801 = (/(real(1)/i,i=1,n)/)
      r401 = (/(real(2)/i,i=1,n)/)
      r402 = (/(real(3)/i,i=1,n)/)
      call sub1(r801,r401,r402,n,r42,r43)
      if (int(abs(r42-r43))==0) then
        print *,"ok"
      else
        print *,"ng"
      endif
      end

      subroutine sub1(r801,r401,r402,n,r42,r43)
      real(kind=8),dimension(n)  :: r801
      real(kind=4),dimension(n)  :: r401,r402
      real(kind=4)               :: r42
      real(kind=4)               :: r43
      do i=1,n
        r42 = r402(i)
        if (i.lt.9) then
          r42 = r801(i)
        endif
      enddo
      do i=1,n
        r43 = r401(i)
        r401(i) = sin(r42)
        r42 = r402(i)
        if (i.lt.9) then
          r43 = r801(i)
          r42 = r801(i)
          r402(i) = sin(r42)
        endif
      enddo
      end
