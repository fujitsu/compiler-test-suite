      integer*4  i, j/0/
      character  a*32767,b*10
      data b/'0123456789'/
      a=' '
      do i=1, 32767
         j=3
         a(i:i) = b(j:j)
      enddo
      print *,a(1:10),a(1000:1001),a(32760:32767)
      end

