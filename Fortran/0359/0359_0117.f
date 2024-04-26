
       real a(10),b(10),c(10)
        b = 1.0
        c = 2.0
       do 10 i=1,10
        a(i)=b(i)+c(i)
 10    continue
       print *,a
       end
