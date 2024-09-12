       real*4 aa(10,10)
       data aa/100*1.5/
       data n/10/

       m = n/2
       q = 0.0
       do 100 i=1,n
         if (m-i) 340,330,340
340        y=aa(m,i)
           go to 320
330        y = 1.0
320      q = q + y*aa(i,m)
100    continue
       write(6,*) q
       stop
       end
