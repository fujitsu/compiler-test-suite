      integer*4 a(10),b(10),c(10),d(10),e(10)
      integer*4 sumson

      data a,b,c,d,e/10*1,10*2,10*3,10*4,10*5/
      data sumson/0/

      do i=1,10
        a(i) = c(i) + d(i)
        sumson = sumson + a(i)
        b(i) = c(i) + e(i)
        sumson = sumson + b(i)
      enddo
      print*, sumson
      end
