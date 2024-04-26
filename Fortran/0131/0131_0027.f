      program nrgl16
      integer n
      parameter( n=3 )
      dimension a(3,6)
      data a/2,3,4,3,5,3,4,2,30,1,0,0,0,1,0,0,0,1/
      m=2*n
      do 40 k=1,n
        p=a(k,k)
        do 20 j=k,m
          a(k,j)=a(k,j)/p
 20     continue
        do 10 i=1,n
          if(i-k)21,10,21
 21       aik=a(i,k)
          do 30 j=k,m
            a(i,j)=a(i,j)-aik*a(k,j)
 30       continue
 10     continue
 40   continue
*
      l=n+1
*
      sum=0
      do 1 i=1,n
        do 1 j=l,m
          sum=sum+a(i,j)
 1    continue
      if( abs(abs(sum)-9.) < 0.0002 ) then
        write( 6,* ) ' ok '
      else
        write( 6,* ) ' ng '
      endif
      stop
      end
