      real  a(10)
      a=1.
      call sub(a,10,2.0)
      write(6,99) a
 99   format(5f10.5)
      stop
      end
      subroutine sub(a,n,z)
      real  a(n),z
      
      a = ATAN2( a , z )
      return
      end
