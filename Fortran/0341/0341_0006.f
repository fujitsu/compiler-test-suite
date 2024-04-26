      real a(10,10,10),b(10,10,10)
      a=1
      b=1
        do 10 j=1,10
          do 10 k=1,10
      do 10 i=1,10
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
10    continue
      print '(1000f11.8)',a
      end
