       real a(50,10,5,10),b(50,10,5,10)
       data a,b/25000*1.0,25000*2.0/
       do 1 i=1,50
       do 1 j=1,5
       do 1 k=1,3
       do 2 l=1,8
        a(i,j,k,l)=a(i,j,k,l)+b(i,j,k,l)
 2     continue
 1     continue
       print *,a(1,1,1,1),a(2,2,2,2),a(50,10,5,10)
       end
