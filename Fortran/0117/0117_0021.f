      real a(10,10)
      a=1
      do 10 i=1,10
      do 10 j=1,10
      call sub()
      a(i,j)=1
10    continue
      print *,a(1,1)
      end
      subroutine sub()
      end
