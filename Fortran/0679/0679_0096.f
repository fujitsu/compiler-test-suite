      complex $c
      dimension $c(5,5)
      data $c/25*(1.,1.)/
      do 10 i=1,5
       do 10 j=1,5
        $c(i,j)=1.
 10   continue

      write(6,*) $c
      stop
      end
