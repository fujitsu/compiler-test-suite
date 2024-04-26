
       real a(2025),b(2025),c(2025)
        b = 1.0
        c = 1.0
       do 10 i=1,2025
        a(i)=b(i)+c(i)
 10    continue
       write (6,*) a(1),a(256),a(512),a(768),a(1024),a(2025)
       stop
       end
