      dimension a(10),b(10),c(10)
      data  a,b,c/10*1.0,10*2.0,10*3.0/

      do 10 j=1,10
        do 10 i=1,10
          a(i) = a(i) + b(i) + c(i)
   10 continue
      print *,a
      stop
      end
