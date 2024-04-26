      integer*4 i,j,k
      real*8 a(10,10,10)
      a=1
      i=1
      call sub(a,i)
      end
c
      subroutine sub(a,l)
      real*8 a(10,10,10)
      do 10 i=l+1,10
      do 10 j=2*l,5+5
      do 10 k=l,1+9
      a(i,j,k) = k
10    continue

      print *,a
      end
