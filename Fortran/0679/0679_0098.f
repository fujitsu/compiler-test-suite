      dimension a(10,10),b(10,10),c(10,10)
      data  a,b,c/100*1.0,100*2.0,100*3.0/

      do 10 j=1,10
        do 10 i=1,10
          a(i,j) = a(i,j) + b(i,j) + c(i,j)
   10 continue
      print *,a
      stop
      end
