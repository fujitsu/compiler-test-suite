       real a(50,20,20),b(50,20,20),c(50,20,20)
       data a,b,c/20000*1.0,20000*2.0,20000*3.0/
       do 10 i=1,50
       do 10 j=1,10
       do 20 k=1,15
  20   a(i,j,k)=c(i,j,k)-b(i,j,k)
  10   continue
       print *,a
       end
