       logical*1 l1(10)
       data l1/10*.true./
       real   a(10),b(10),c(10)
       data   a/1,2,3,4,5,6,7,8,9,10/
       data   b/1,1,3,3,5,5,7,7,9,9/,x/2./
       data   c/1,1,3,3,5,5,7,7,9,9/

       do 10 i=1,10
         if (x.eq.0.0) go to 10
           x = a(i)/x - (b(i)+c(i))*x
10     continue
       write(6,*) x
       do 20 i=1,10
         if (l1(3)) then
           l1(i) = a(i) .gt. b(i)
         endif
20     continue
       write(6,*) l1
       stop
       end
