       real a(40,40),b(40,40),c(40,40)
       data n1,n2,n3/10,40,3/
       data m1,m2,m3/1,4,1/
       real r(40,40)
       data r/1600*2.2/
       data a,b,c/1600*5.0,1600*2.0,1600*3.0/
       do 20 j=m1,m2,m3
       do 10 i=n1,n2,n3
       r(j,i)=a(j,i)-c(j,i)*b(j,i)
  10   continue
  20   continue
       print *,r
       end
