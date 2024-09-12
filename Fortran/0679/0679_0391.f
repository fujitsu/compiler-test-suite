       logical*1 l1(10)
       logical*4 l4(10)
       real   a(10),b(10),c(10),d(10),e(10)
       data   a/1,2,3,4,5,6,7,8,9,10/
       data   b/1,1,3,3,5,5,7,7,9,9/
       data   c/10*0.0/,d/10*0.0/,e/10*0.0/

       do 10 i=1,10
         l1(i) = a(i) .gt. b(i)
         if (l1(i)) then
           c(i) = i
         endif
         l4(i) = l1(i)
         if (l4(i)) then
           d(i) = i
           if (l1(i)) then
             e(i) = i
           endif
         endif
10     continue
       write(6,*) l1
       write(6,*) l4
       write(6,*) c
       write(6,*) d
       write(6,*) e
       stop
       end
