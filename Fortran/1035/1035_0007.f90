      i9ans1=0
         do  108  i=1,3,2
         do  108  j=2,3
         do  108  k=1,3,3
         i9ans1=i9ans1+i+j+k
  108    continue
      if (i9ans1.ne.22) print *,'error'
      print *,'pass'
      end
