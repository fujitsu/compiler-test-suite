      integer    i9ans1,i9comp
      i9ans1=0
      assign 53 to m
      i=0
      j=0
 100  i=i+1
 200    j=j+1
            i9ans1=i9ans1+1
            if(i9ans1)  54,54,55
 53     if(j.le.1) goto 200
 52   if(i.le.1) goto 100
      go to 54
 55   continue
      if(i9ans1.ge.1)  go to m,(53,54)
 54   i9comp=8
      write(6,*) i9ans1,i9comp
      end
