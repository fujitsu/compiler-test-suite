
       real a(10),b(10),c(10)
       data b,c/20*1.0/
       do 10 i=1,10
        a(i)=b(i)+c(i)
 10    continue
       do 11 i=1,10
        a(i)=a(i)+c(i)
 11    continue
       write (6,*) a
       stop
       end
