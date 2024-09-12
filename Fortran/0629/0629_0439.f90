      real a(10,10),b(10,10)
      data a/100*2/,b/100*3/
      a= matmul(a,b)
      print *,a
      end
