      integer*4  i, j/0/
      character  a*32767,b*10
      data b/'0123456789'/
      a=' '
      do i=1, 32767
         j=3
         a(i:i) = b(j:j)
      enddo
      print *,a
      end
