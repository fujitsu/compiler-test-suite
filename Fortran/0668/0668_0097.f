       dimension a(100),b(150),c(120),d(100)
       logical*4 l(100)
       data l/20*.false.,30*.true.,40*.false.,10*.true./
       data a/20*1,30*5,40*2,10*4/
       data b/20*2,30*6,40*2,10*3,50*0/
       data c/20*3,30*7,40*2,10*2,20*0/
       data d/20*4,30*1,40*2,10*1/
        do 10 i=1,100
         if(l(i)) then
          a(i) = 2
          d(i) = 1
          c(i) = 4
         endif
10      continue
        do 20 i=1,100
         a(i) = 2
         if(l(i)) then
          a(i) = 2
          d(i) = 1
          c(i) = 4
         endif
20      continue
 1     format(5f10.5)
       write(6,1) a
       write(6,1) b
       write(6,1) c
       write(6,1) d
       stop
       end
