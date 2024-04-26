      integer*8 ::a(0:127)=(/(i,i=0,127)/)
      integer*8 ::b(0:127)=z'ffffffffffffffff',c(1)

      c(1)=a(0)
      do i=1,127
        c(1)=iand(c(1),a(i))
      end do

      if (c(1).ne.a(0))      stop 'ng' 

      c(1)=b(0)
      do i=1,127
        c(1)=iand(c(1),b(i))
      end do

      if (c(1).ne.b(0))      stop 'ng' 
      print *,'ok'
      end
