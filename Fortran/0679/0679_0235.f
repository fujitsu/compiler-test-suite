       real a(50,10,20),b(50,10,20)
       data a,b/10000*1.0,10000*2.0/
       do 1 i=1,50
       do 2 j=1,5
       do 2 k=1,5
        a(i,j,k)=a(i,j,k)+b(i,j,k)
 2     continue
 1     continue
       print *,a
       end
