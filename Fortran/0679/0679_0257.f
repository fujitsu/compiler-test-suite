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
       do 30 l=1,10
       do 20 k=1,5
       do 20 j=1,n2
       do 10 i=1,n1
  10   r(i,j,k,l)=a(i,j,k,l)-c(i,j,k,l)-b(i,j,k,l)
  20   continue
  30   continue
       print *,r
       end