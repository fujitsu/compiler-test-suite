       logical*4 la(10),lb(10),lc(10)
       data la/10*.false./,lb/10*.false./,lc/10*.false./
       real   a(10),b(10),c(10),d(10)
       data   a/1,2,3,4,5,6,7,8,9,10/
       data   b/1,1,3,3,5,5,7,7,9,9/
       data   c/10*0.0/,d/10*2.0/

       do 10 i=1,9
         la(i) = a(i) .gt. b(i)
         if (la(i)) then
           a(i) = b(i)
           lb(i) = .not.la(i+1)
           if (lb(i+1)) then
             c(i) = d(i)
             lc(i) = la(i) .and. lb(i+1)
           endif
         endif
10     continue
       write(6,*) la
       write(6,*) lb
       write(6,*) lc
       write(6,*) a
       write(6,*) c
       stop
       end
