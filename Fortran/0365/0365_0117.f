      integer*1 ::a(0:127)=(/(i,i=0,127)/)
      integer*1 ::b(0:127)=0,c(1)
      common /com/c

      c(1)=a(0)
      do i=1,127
        c(1)=ior(c(1),a(i))
      end do

      if (c(1).ne.a(127))      stop 'ng' 

      c(1)=b(0)
      do i=1,127
        c(1)=ior(c(1),b(i))
      end do

      if (c(1).ne.b(127))      stop 'ng' 
      print *,'ok'
      end
