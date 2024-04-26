          integer ::a_initial(100)=0
     k=1
     do 20 j=1,10
        do 10 i=k,10
          a_initial(i)=a_initial(i)+1
          k=k+1
   10   continue
   20 continue
      if (k/=11) print *,101
      print *,'pass'
      end
