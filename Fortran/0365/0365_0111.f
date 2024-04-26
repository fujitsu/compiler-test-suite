      integer*8 ::a(1000)=(/(i,i=1,1000)/)
      integer*8 ::b(1000)=(/(i,i=1,1000)/),c
      common/com/c

      c=0
      do i=1,1000
        c=c+a(i)*b(i)
      end do
        
      if (c.ne.333833500)      stop 'ng' 

      print *,'ok'
      end
