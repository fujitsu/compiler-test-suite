       dimension  a(10),b(10),c(10)
       data  a/10*2.0/,b/10*3.0/,c/10*4.0/
       n = 0
       do 10 i=1,4
         if (a(i).gt.2) then
           n = n + 1
         else
           n = n + 2
         endif
         a(n+1) = b(n+1) / c(n+1)
         b(n) = a(n) * c(n)
 10    continue
       write(6,*) n
       write(6,*) a
       write(6,*) b
       write(6,*) c
       stop
       end
