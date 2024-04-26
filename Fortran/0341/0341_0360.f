      real a(10,10)
      a=1
      do 10 i=1,10
        a=a+1
        do 10 j=1,10
          a=a+1
          do 10 k=1,10
            a(j,k)=1
10    continue
      print *,a(1,1)
      print *,a(10,10)
      end
