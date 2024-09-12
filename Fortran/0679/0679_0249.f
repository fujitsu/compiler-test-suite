       real a(40,10,5,10),b(40,10,5,10),c(40,10,5,10)
       data n1/40/
       data a,b,c/20000*5.0,20000*2.0,20000*3.0/
       do 1 l=1,10
       do 1 k=1,5
       do 1 j=1,10
       do 1 i=1,40
         a(i,j,k,l)=i-j+k-l
         b(i,j,k,l)=i-l
  1      c(i,j,k,l)=i-k-l+j
       call sub(a,b,c,n1)
       stop
       end
       subroutine sub(a,b,c,n1)
       real a(n1,10,5,10),b(n1,10,5,10),c(n1,10,5,10)
       real r(30,10,5,10),s(10,5,10)
       data r/15000*2.2/,s/500*1.1/
       do 40 k=1,5
       do 30 j=1,10
       do 30 l=1,10
       do 10 i=1,5
       r(i,j,k,l)=a(i,j,k,l)-c(i,j,k,l)-b(i,j,k,l)+s(j,k,l)
  10   continue
  30   continue
  40   continue
       print *,r
       end
