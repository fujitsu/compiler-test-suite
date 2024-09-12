       real a(30,10,5,10),b(30,10,5,10),c(30,10,5,10)
       data n1,n2,n3,n4/30,10,5,10/
       data a,b,c/15000*5.0,15000*2.0,15000*3.0/
       call sub(a,b,c,n1,n2,n3,n4)
       stop
       end
       subroutine sub(a,b,c,n1,n2,n3,n4)
       real a(n1,n2,n3,n4),b(n1,n2,n3,n4),c(n1,n2,n3,n4)
       real r(30,10,5,10)
       data r/15000*2.2/
       do 20 k=1,5
       do 10 i=1,30
       do 10 j=1,10
       do 10 l=1,5
       r(i,j,l,k)=a(i,j,l,k)-c(i,j,k,l)-b(i,j,l,k)
  10   continue
  20   continue
       print *,r
       end
