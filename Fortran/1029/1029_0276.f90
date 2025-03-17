      integer,dimension(3,2)::i,j,k,l

      i=reshape((/1,0,1,0,1,0/),(/3,2/))
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
