      integer*1 a(2)
      integer   b(1)
      data a/2*0/, b/2/
      j=1
      do i=1,1
        a(j)=2
        j=b(1)
        a(j)=3
      enddo
      print*,a
      end
