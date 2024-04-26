      real    a(10)/-1,-2,0,1,6*5/,b(10)/10*0/
      j=0
      do 10 i=1,10
       if(a(i).gt.0) goto 99
       j=j+1
       b(j)=a(i)
 10    continue
 99   write(6,*) b,i,j
      end
