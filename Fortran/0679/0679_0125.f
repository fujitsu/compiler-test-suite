      dimension a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/

      do 10 j=1,10
        do 10 i=1,10
          do 10 n=1,10
            a(n,j,i) = a(n,j,i) + b(n,j,i) + c(n,j,i)
   10 continue

      print *,a
      stop
      end
