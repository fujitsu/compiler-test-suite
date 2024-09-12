       real a(100,10),b(100,10)
       data a,b/1000*1.0,1000*2.0/
       do 1 i=1,100
       do 2 j=1,5
        a(i,j)=a(i,j)+b(i,j)
 2     continue
 1     continue
       print *,a
       end
