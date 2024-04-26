      integer*4  a(10)/10*0/
      k=1
      do 300 i=1, 1
        do 300 j=1, 10, k
          a(j) = j
          k=j
 300    continue
      write(6,*) a
      end
