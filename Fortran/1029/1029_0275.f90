      integer,dimension(3)::i,j,k,l

      i=1
      where(i==1)
        j=1
        k=j
        l=k
      elsewhere
        j=0
        k=j
        l=k
      endwhere

      if (any(i/=j) .or. any(i/=k) .or. any(i/=l)) write(6,*) "NG"
      print *,'pass'

      end
