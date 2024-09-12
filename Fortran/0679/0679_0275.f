      dimension a(4,4),b(4,4)
      data b/16*1.0/
      do 10 j=1,4
        do 10 i=1,4
          a(i,j)=b(i,j)
  10  continue
      write(6,*) a
      stop
      end
