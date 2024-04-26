      program nrgl17
      sum=0.0
      do 10 i=1,20
        a=i
        x0=1.0
 30     x=0.5*(x0+a/x0)
        if( abs(x-x0)-1.0e-6 ) 15,15,20
 20     x0=x
        goto 30
 15     continue
        sum=sum+x
 10   continue
      if( abs( sum-61.665878 ) .le. 0.001 ) then
        write( 6,* ) ' ok '
      else
        write( 6,* ) ' ng ',sum
      endif
      stop
      end
