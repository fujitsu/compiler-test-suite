      logical*4 l(100,100)
        do 200 j=1,100
        do 200 i=1,100
          l(i,j) = .true.
 200  continue
        do 300 j=1,100
          l(1,j) = .false.
          l(100,j) = .false.
 300  continue
      write(6,*) ' l = ',(l(i,50),i=1,100)
      stop
      end
