      real a(100),b(10,100)

      do 1 j=1,100
        a(j) = j
        do 2 i=1,10
          b(i,j) = i
    2   continue
    1 continue

      write(6,*) a(100),b(10,100)
      end
