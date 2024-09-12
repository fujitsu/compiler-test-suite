       real a(10,5,2,5,5,5),b(10,5,2,5,5,5)
       data a,b/12500*1.0,12500*2.0/
       do 1 i=1,8
       do 1 j=1,5
       do 2 k=1,2
       do 2 l=1,4
       do 3 m=1,3
       do 3 n=1,4
        a(i,j,k,l,m,n)=a(i,j,k,l,m,n)+b(i,j,k,l,m,n)
 3     continue
 2     continue
 1     continue
       print *,a
       end
