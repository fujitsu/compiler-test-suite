       logical*4 la(10),lb(10)
       data la/10*.false./,lb/10*.false./
       real   a(10),b(10)
       data   a/1,2,3,4,5,6,7,8,9,10/
       data   b/1,1,3,3,5,5,7,7,9,9/

       do 10 i=1,9
         la(i) = a(i) .gt. b(i)
         if (la(i)) then
           lb(i) = la(i+1)
         endif
10     continue
       write(6,*) la
       write(6,*) lb
       stop
       end
