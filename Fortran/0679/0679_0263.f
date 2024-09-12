       real a(40,40),b(40,40),c(40,40)
       data n1,n2,n3/10,40,4/
       real r(40,40)
       data r/1600*2.2/
       data a,b,c/1600*3.0,1600*2.0,1600*5.0/
       do 20 j=1,40
       do 10 i=n1,n2,n3
  10   r(j,i)=a(j,i)-c(j,i)*b(j,i)
  20   continue
       print *,r
       end
