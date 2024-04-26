      real  a(10)
      a=1.
      call sub(a,10,2.0)
      print *,a
      stop
      end
      subroutine sub(a,n,z)
      real  a(n),z
      
      a = ATAN2( a , z )
      print *,a
      return
      end
