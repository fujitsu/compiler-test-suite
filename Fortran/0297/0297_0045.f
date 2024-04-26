      parameter(n=10)
      real * 8 a(n),b(n),c(n),d(n),s
      integer * 8 i
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,0,0,0,0/
      data d/1,2,3,4,5,6,0,0,0,0/
      do i=1,n
        if (c(i).gt.0) then
          s = a(i)+b(i)
          if (d(i).gt.0) then
            a(i) = a(i)*s
          endif
      endif
      enddo
      print *,a
      stop
      end
