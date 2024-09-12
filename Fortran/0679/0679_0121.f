      dimension a(10,10,10,10),b(10,10,10,10),c(10,10,10,10)
      data  a,b,c/10000*1.0,10000*2.0,10000*3.0/

      do 10 j=1,10
        do 10 i=1,10
          do 10 n=1,10
            do 10 m=1,10
            a(i,j,n,m) = a(i,j,n,m) + b(i,j,n,m) + c(i,j,n,m)
   10 continue

      print *,a
      stop
      end
