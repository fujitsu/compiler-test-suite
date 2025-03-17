      real a(3) 
      a=2
      call sub(a,3)
      end
      recursive subroutine sub(a,l)
      real a(1:l)
      print *,a
      end
