       real a(30,10,5,10),b(30,10,5,10),c(30,10,5,10)
       data n1,n2/30,10/
       data a,b,c/15000*5.0,15000*2.0,15000*3.0/
       call sub(a,b,c,n1,n2)
       stop
       end
       subroutine sub(a,b,c,n1,n2)
       real a(n1,n2,5,10),b(n1,n2,5,10),c(n1,n2,5,10)
       real r(30,10,5,10)
       data r/15000*2.2/
       do 30 k=1,10
       do 30 i=1,5
       do 20 j=1,5
       do 10 l=1,5
       r(i,j,l,k)=a(i,j,l,k)-c(i,j,l,k)-b(i,j,l,k)
  10   continue
  20   continue
  30   continue
       print *,r
       end
