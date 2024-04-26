       dimension  a(10),b(10),c(10)
       data  a/10*2.0/,b/10*3.0/,c/10*4.0/
       n = 0
       do 10 i=1,4
         if (a(i).gt.1) then
           n = n + 1
           a(n+1) = b(i+1) / c(i+1)
         endif
         b(i) = a(n) * c(i)
 10    continue
       write(6,*) n
       write(6,*) a
       write(6,*) b
       write(6,*) c
       stop
       end
