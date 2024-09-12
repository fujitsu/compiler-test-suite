       real*8 a(10)/10*2.0/,b(10)/10*8.0/,c(10)/10*5.0/,d(10)/10*0./
       data m/5/

       do 100 i=1,10
         if (m.lt.8) then
           d(i)= a(i)-2.-(b(i)*4.0+c(i))
         endif
100    continue
       write(6,*) d
       stop
       end
