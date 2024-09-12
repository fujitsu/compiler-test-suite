      program main
      dimension a(20)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,10*11/
      data      k/0/
      do 10 i=1,10
       do 20 while ( k.ne.10 )
        k=k+1
        n=10
        do 30 j=1,10
          a(i) = a(j+n)
   30   continue
   20  continue
   10 continue
      write(6,*)  a
      stop
      end
