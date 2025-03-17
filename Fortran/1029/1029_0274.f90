      integer,dimension(3)::i,j

      i=(/1,0,1/)
      where(i==1)
        j=1
      elsewhere
        j=0
      endwhere

      if (any(i/=j)) write(6,*) "NG"
      print *,'pass'

      end
